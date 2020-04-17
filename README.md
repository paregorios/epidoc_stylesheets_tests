# epidoc_stylesheets_tests

https://epidoc.stoa.org

A test environment of sorts for the EpiDoc Stylesheets

## Dependencies:

### Java

Requires a command-line java runtime environment. Tested with AdoptOpenJDK (build 14+36) under Mac OSX Mojave (10.14.6). To install this JDK on a Mac using homebrew ([hat-tip: mkyong](https://mkyong.com/java/how-to-install-java-on-mac-osx/)):

```bash
brew tap adoptopenjdk/openjdk
brew cask install adoptopenjdk14
```

To verify that claxon works with this (or another) JDK, on a Mac or Linux machine you can run a quick test at the command line:

```bash
./tests/test_claxon.sh
```

### EpiDoc Example Stylesheets

Scripts in this package expect to find a directory containing the EpiDoc Example Stylesheets at ```data/epidoc-stylesheets```. Recommended installation practice is to clone the EpiDoc Example Stylesheets from GitHub into a separate directory on the local machine and create a symbolic link in the package ```data``` folder, thus:

```bash
ln -s /path/to/stylesheets/local/dir data/epidoc-stylesheets
```

To verify that transforms are working with the epidoc stylesheets, run the following script:

```bash
./tests/test_iospe.sh
```

<hr/>

epidoc_stylesheets_tests is the work of Tom Elliott (tom.elliott@nyu.edu) and Hugh Cayless (hugh.cayless@duke.edu). Copyright (c) 2020 New York University and Duke University. See LICENSE.txt file for complete license.

