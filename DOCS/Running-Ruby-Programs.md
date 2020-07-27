Run `apk add ruby ruby-dev build-base`. These packages are all necessary. If you're interested:

* `ruby` is Ruby
* `ruby-dev` is for Ruby headers that are required to build native extensions
* `build-base` is also required to build native extensions

Test to make sure Ruby is installed by typing `ruby -v`, you should see something along the lines of 

```bash
ruby 2.5.7p206 (2019-10-1 revision 67816) [i586-linux-musl]
```

Congrats! You should now be able to install most Ruby gems. Edit below if there's errors.

## FAQ

### Can I install RVM?
Unfortunately, it doesn't look possible to install RVM at this time. I will update this if I find a way.

## Ruby Related Errors

<!-- If you have an error, put ### and your problem. A solution will be posted, if one exists -->

### Gems won't install due to "Can't find ruby headers in [path]"
Solution: Make sure you installed `ruby-dev` from before. Remember, both `ruby` and `ruby-dev` are required.

### Gems won't install due to "Can't find lsc++" etc
Solution: Make sure you installed `build-base` from before. This is required for native extensions to be built.

## Gems that won't install

<!-- If you have an error installing a gem, add to the list. A solution will be posted, if one exists -->

* None known