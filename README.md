# docker-java - a Docker container having Oracle Java JDK

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-java/

# EXAMPLE

```
$ make
javac: invalid flag: -version
Usage: javac <options> <source files>
where possible options include:
  -g                        Generate all debugging info
  -g:none                   Generate no debugging info
  -g:{lines,vars,source}    Generate only some debugging info
  -nowarn                   Generate no warnings
  -verbose                  Output messages about what the compiler is doing
  -deprecation              Output source locations where deprecated APIs are used
  -classpath <path>         Specify where to find user class files
  -sourcepath <path>        Specify where to find input source files
  -bootclasspath <path>     Override location of bootstrap class files
  -extdirs <dirs>           Override location of installed extensions
  -d <directory>            Specify where to place generated class files
  -encoding <encoding>      Specify character encoding used by source files
  -source <release>         Provide source compatibility with specified release
  -target <release>         Generate class files for specific VM version
  -help                     Print a synopsis of standard options
```

# REQUIREMENTS

* [Docker](https://www.docker.com/)

## Optional

* [make](http://www.gnu.org/software/make/)

## Debian/Ubuntu

```
$ sudo apt-get install docker.io build-essential
```

## RedHat/Fedora/CentOS

```
$ sudo yum install docker-io
```

## non-Linux

* [VirtualBox](https://www.virtualbox.org/)
* [Vagrant](https://www.vagrantup.com/)
* [boot2docker](http://boot2docker.io/)

### Mac OS X

* [Xcode](http://itunes.apple.com/us/app/xcode/id497799835?ls=1&mt=12)
* [Homebrew](http://brew.sh/)
* [brew-cask](http://caskroom.io/)

```
$ brew cask install virtualbox vagrant
$ brew install boot2docker
```

### Windows

* [Chocolatey](https://chocolatey.org/)

```
> chocolatey install docker
```
