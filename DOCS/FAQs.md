## Frequently Asked Questions

### Q: My favorite program doesn’t work!
**A:** That’s not a question, but this is not surprising. Much of the emulation is still not finished, and many programs *will* fail. Do not hesitate to create [an issue](https://github.com/tbodt/ish/issues/new) if the specific program is not already on the [to-do list](https://github.com/tbodt/ish/projects/7), as it will be brought to the attention of the contributors, and they will (eventually) make it work. You can also check out [this page](https://github.com/tbodt/ish/wiki/What-works%3F) on the wiki where users actively test common programs.

### Q: When is the next TestFlight build coming out?
**A:** Sooner than it took for build 32 to come out. New builds are more frequent, and the app will be updated when something new has been added or fixed.

### Q: Is iSH 32-bit or 64-bit?
**A:** The app itself is a 64-bit ARM binary so that it can run on modern versions of iOS. iSH emulates x86_32 and as such can only run software compiled for this platform (specifically, it cannot currently run 64-bit ELF executables). 

### Q: Why does iSH not emulate ARM or some other architecture?
**A:** Mostly because x86 was what [@tbodt](https://github.com/tbodt) was comfortable with at the time. Using x86 also has the added benefit of letting us access to the rich set of software that’s already been built for this platform. Performance-wise the choice of architecture is not all that important, since the code is being emulated anyways (that is, using ARM wouldn’t actually help much).

### Q: Why does iSH emulate at all? Can't it use a JIT compiler, or virtualization?
**A:** iOS devices lack support for hardware virtualization, and even if such a thing did exist it would need to be exposed to applications before it could be used. Generating code on the fly, which is required for JIT compilation, is not intended for use by third-party applications and such a technique requires entitlements that cannot be used when uploading to App Store Connect (as is necessary for distribution via TestFlight).

### Q: Why is iSH on TestFlight and not on the App Store? I’m scared that Apple will find this in violation of the App Store Guidelines; will it ever be on the App Store?
**A:** We really have no idea. iSH is currently in beta (hence the use of TestFlight) and Apple has continued to approve the app for this, but we have not tried to submit the app for full App Store review and cannot say what would happen if we did. 

### Q: I lost access to the TestFlight?
**A:** That might be because we hit the limit of testers, at 10,000, so we did some house cleaning and removed testers who have either been inactive, or haven't updated. If need be [you can join the TestFlight again.](https://testflight.apple.com/join/97i7KM8O)