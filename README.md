# epidoc_stylesheets_tests

https://epidoc.stoa.org

A test environment of sorts for the EpiDoc Stylesheets

Dependencies:

Requires a command-line java runtime environment. Tested with AdoptOpenJDK (build 14+36) under Mac OSX Mojave (10.14.6). To install this JDK on a Mac using homebrew ([hat-tip: mkyong](https://mkyong.com/java/how-to-install-java-on-mac-osx/)):

```bash
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk14
```

To verify that claxon works with this (or another) JDK, on a Mac or Linux machine you can run a quick test at the command line:

```bash
./tests/test_claxon.sh
```


epidoc_stylesheets_tests is the work of Tom Elliott (tom.elliott@nyu.edu). Copyright (c) 2020 New York University. See LICENSE.txt file for complete license.

