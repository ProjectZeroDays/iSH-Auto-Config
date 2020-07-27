### Prologue

This tutorial will guide you through the installation and setup of php with a certificate.

I did every step in the iSH build 65, and tried out every step afterwards.\
If you get stuck somewhere feel free to mention me on the iSH discord Server. (Username 404#0404)

#### What you need
* Basic network knowledge (DNS, DHCP, IPv4)
* Administrator privileges on the computer you want to install the certificate

If you don't have Administrator permissions you can still follow the tutorial,\
you will get a certificate error but you'll be able to "continue anyways", the connection will still be encrypted.

We won't use nginx or apache2 as I couldn't get those two working.\
To get around this problem we will use the built-in php webserver and use the stunnel package to put a certificate ontop of it.

In this tutorial we will also cover how to create your own root certificate authority on iSH and how you get it to your PC wirelessly without using extra tools.

We'll do the following things in this tutorial:

1. Create a TLS certificate with root CA (You can skip this if you already have a PEM file with Certificate and key)
2. Install php modules that we'll later on use for a php filemanager called "Tiny File Manager" (You can skip the installation of those modules if you want to run something else on it)
3. Run a php webserver with stunnel and specify the web-directory and also the certificate to make this work.
4. Install your root CA on your Windows Computer (You can do this on any OS, there's a lot of tutorials online)

#### What is a certificate and a root certificate authority?

Nowadays, almost every website uses a certificate: not only can it be used to secure the connection to a website, but you can also use it to secure other services that didn't have encryption in mind by design. If you're curious about securing unsecured protocols, please research stunnel, as there's a lot of information available. A certificate is usually signed by a trusted root certificate authority, which every up-to-date device knows through updates. Those certificate authorities can be paid so they will create and sign a certificate for you. This only works for real webpages. Fortunately we aren't working on a real webpage, but rather your iPhone as webserver. So we can create our own certificate and root authority.

##### Why not just create the certificate and skip the root certificate authority?

Good question! If you skip it, your certificate will have no certificate authority: most browsers will see this as a huge problem and will display an error for you.

##### How much is an own certificate with authority?

It is completely free. So keep on following this tutorial and you'll soon profit from it.

#### Composition of a certificate

When you create a certificate there'll be a bunch of files.\
To make this simpler to understand here's an explanation:

* .CRT files: this contains the certificate, not containing a key.
* .KEY files: this contains the private key for the certificate only
* .PEM files: this either has a certificate only or both, the certificate and the private key.\
  It is important to use a pem file with both in this tutorial
* .EXT files: in this file you can define alternative DNS names and other options
* .CSR file: this is a signing request file, it is needed for the creation of the certificate.

For more information on certificates please use google, there is many pages about certificates.

### Installing the needed packages

#### Needed packages

Before installing anything, please run following:

```
apk update
```

To make this easy here is the command to install all those packages onto iSH:

```
apk add openssl stunnel perl php php-json php-session php-fileinfo php-iconv php-zip php-mbstring php-ctype php-phar curl
```

Here is a list to make this more readable:

* openssl
* stunnel
* perl
* php
* php-json
* php-session
* php-fileinfo
* php-iconv
* php-zip
* php-mbstring
* php-ctype
* php-phar
* curl

### Creating your own certificate authority

At this point you probably figured out the best way to connect to your iSH instance, I recommend to use SSH, please check the wiki to see how to install it. This makes the whole installation a copy and paste process.

We start by defining a name for our certificate authority.\
In my case I'll go with DiscordDigital. You'll need to replace DiscordDigital with your certificate authority name. Make sure to not put spaces in the filenames. You can have spaces in the Common name of your authority later

Run following to create your **key** file:

```
openssl genrsa -des3 -out DiscordDigital.key 2048
```

While running it'll ask you for a passphrase, type in a password you can remember. This will be your certificate authority password to sign certificates. You need this later.

Next we create your root certificate:

```
openssl req -x509 -new -nodes -key DiscordDigital.key -sha256 -days 825 -out DiscordDigital.pem
```

**Warning**: If you change the days to be above 825 then you'll encounter certificate errors when using that certificate in Safari. Safari changed their security policies with iOS 13.

There will be a lot of questions, but most importantly what matters is the **common name**, as that'll be the name displayed in your OS for your certificate. In my case I type in DiscordDigital, but you can type in anything, even with spaces.

Now let's make a directory and move our CA files into.

```
mkdir CA
mv DiscordDigital.* CA
```

You now have a certificate authority and you can continue to create a certificate for your iPhone in the next step

### Creating and signing your certificate for your iPhone

Make sure you can reach your iPhone via DNS resolution. This means if you open a command prompt or a terminal and type in "ping YouriPhoneName" that you get the correct IP address of your iPhone back. You may need to adjust your DNS Server or check your hostname of your iPhone. If you can't get DNS resolution to work then you won't finish this tutorial with a valid certificate. IP addresses work with TLS too but they can't be valid. In my case, I manage my own DNS Server where I've reserved my iPhones IP in my DHCP pool and assigned a name to the IP in my DNS server.

My iPhone's name will be "iphone" if it's something else like "iphone11pro" that'll work perfectly fine, as long as you can reach it over your network by name.

#### Creating your iPhone certificate

```
openssl genrsa -out iphone.key 2048
openssl req -new -key iphone.key -out iphone.csr
```

You'll be asked for many things, you can skip most of those. On common name however you have to enter the hostname of your iPhone as explained above. For me I typed iphone and pressed enter.

Next we will create the EXT file to add some options to our certificate. (Filename: iphone.ext)

**Warning**: Replace "iphone" with your own DNS name of your iPhone, you can add multiple DNS names by adding a new line with "DNS.2 = iphone.local" for example.

```
authorityKeyIdentifier=keyid,issuer
basicConstraints=CA:FALSE
keyUsage = digitalSignature, nonRepudiation, keyEncipherment, dataEncipherment
subjectAltName = @alt_names

[alt_names]
DNS.1 = iphone
```

Next we create the certificate and sign it with our certificate authority.\
This assumes the CA files are in an extra folder called "CA".

```
openssl x509 -req -in iphone.csr -CA CA/DiscordDigital.pem -CAkey CA/DiscordDigital.key -CAcreateserial -out iphone.crt -days 825 -sha256 -extfile iphone.ext
```

**Info**: Here you need to enter the password of your certificate authority that you previously defined.

#### Preparing our files and downloading our CA certificate

##### Creating a **PEM** file out of your certificate files

```
cat iphone.key >> iphone.crt
mv iphone.crt iphone.pem
```

##### Moving the files and starting an unencrypted webserver to download the CA to your desktop computer

```
mv iphone.pem /etc/stunnel/
php -S 0.0.0.0:8000 -t /root/CA/
```

Now you can access your certificate by typing the following into your desktops browser:

```
http://<iphone hostname>:8000/DiscordDigital.pem
```

You'll see the certificate displayed as a webpage. Copy the contents and save it as "DiscordDigital**.cer**" into your documents folder (Using notepad for example).

Next open your computer certificates (Search computer certificates in Windows)

If you opened the right management console then you'll see "Trusted Root Certification Authorities",\
open it then right click Certificates, hover "All Tasks" and hit Import...

Here's how it looks on Windows 10:\
![](https://download.discord.digital/screenshots/computer_certificates.PNG)

Select your file and click yourself through the wizard. Once your certificate is imported, it'll show up in the Certificates folder.

If you want other computers to show no errors with your certificate, you need to install the root CA certificate on them as well.\
You can still use the encrypted connection without importing that certificate, it'll show an error, however you can continue anyways.\
In fact it's even possible to use it by https://\<iphone ip\> by skipping the certificate error, it'll still be encrypted.

This process is different for every operating system, so feel free to do a quick google search.

Once you're done you can close the php server on iSH by hitting **CTRL + C** (tap "^" then type "c")

#### Downloading a filemanager

Any php filemanager should work, I picked this one because it's very nice.

Thanks a lot to the developers who make this possible.

```
curl -o index.php https://raw.githubusercontent.com/prasathmani/tinyfilemanager/master/tinyfilemanager.php
sed 's/.*is_https.*/$is_https = True;/' index.php > index_.php
sed 's/.*HTTP_X_FORWARDED_PROTO.*//' index_.php > index.php
rm index_.php
```

### Last steps and final test

On Firefox you'll have to open a new tab and type in "about:config" into the URL bar.

This should open a page that warns you about possible dangers. Click that you accept the risk.

Then search for "enterprise_roots" you should see "security.enterprise_roots.enabled", double click that value, otherwise your computer certificates will be ignored by Firefox. This is a security measurement of Firefox.

For Google Chrome no changed need to be made, other browsers should be fine too.

Then restart your browser to make sure it loads in all root certificate authorities (Including yours).

On iSH run:

```
php -S 0.0.0.0:8000 -t /root/ > /dev/null 2>&1 & stunnel3 -d 443 -r 8000 -p /etc/stunnel/iphone.pem
```

Usually you don't want to type in that long command to start a webserver,\
you can put it in an .sh script and run it whenever you need that webserver running. 

You may want to remove "/dev/null 2>&1" if you want to debug php code that isn't working.\
After running this it shouldn't output any text, but it should run two processes in the background that you can see with the "ps" command.

Go to your desktop browser and type in: **(Adjust to your hostname and make sure it's HTTPS)**

```
https://iphone
```

If everything worked you should see a valid TLS connection like this:
![PHP Filemanager Login](https://download.discord.digital/screenshots/filemanager.png)

**Important**: Default login is **admin/admin@123**

Please check out the page at <https://github.com/prasathmani/tinyfilemanager> about credentials.\
It is important to change your default credentials to prevent others from accessing your files.