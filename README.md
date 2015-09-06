# docker-java - a Docker container having Oracle Java JDK

# DOCKER HUB

https://registry.hub.docker.com/u/mcandre/docker-java/

# EXAMPLE

```
$ make
docker run --privileged --rm -v $(pwd):/mnt mcandre/docker-java:0 sh -c '(cd /mnt && javac HelloWorld.java 2>&1 && java HelloWorld)'
Hello World!
docker run --privileged --rm -v $(pwd):/mnt mcandre/docker-java:0 dpkg -l 'jdk*'
Desired=Unknown/Install/Remove/Purge
| Status=Not/Installed/Config-files/Unpacked/Failed-config/Half-installed
|/ Err?=(none)/Hold/Reinst-required/X=both-problems (Status,Err: uppercase=bad)
||/ Name            Version        Description
+++-===============-==============-============================================
ii  jdk-common      1.0.2-7        JDK (Java Development Kit)
ii  jdk-shared      1.0.2-7        JDK (Java Development Kit) - Shared part
un  jdk-static      <none>         (no description available)
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
