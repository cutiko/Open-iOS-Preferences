# Why?

When working in iOS with user preferences sometimes we need to quickly reset them. I found an [article](https://pradnya-nikam.medium.com/view-and-change-user-defaults-on-ios-simulator-d2c3fc3b82b1) about how to do it. Doing it manually kind of get tedious.

So I did this short script, it has to be run for every install (new installs from XCode change the name of the installation folder).

# How?

Download the script and then run it with two arguments:

 - Device ID
 - Application bundle ID

For example:

```
bash ios_open_preferences.sh FEFD68AF-D256-4GHC-99EE-98810E9L8160 com.company.AppName
```
