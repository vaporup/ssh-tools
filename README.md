<p align="center">
  <img src="https://img.shields.io/badge/uses-ssh-blue.svg?style=flat-square"/>
  <img src="https://img.shields.io/badge/license-gpl--3-brightgreen.svg?style=flat-square"/>
  <img src="https://img.shields.io/badge/status-stable-ff69b4.svg?style=flat-square"/>
  <img src="https://img.shields.io/badge/implementation-bash / python-red.svg?style=flat-square"/>
</p>

ssh-ping
========
Check if host is reachable using ssh_config

* Outputs **Reply from** when server is reachable but login failed
* Outputs **Pong from** when server is reachable and login was successful

![](https://raw.githubusercontent.com/vaporup/ssh-tools/master/demos/ssh-ping.gif)

ssh-version
===========
Shows version of the SSH server you are connecting to

![](https://raw.githubusercontent.com/vaporup/ssh-tools/master/demos/ssh-version.gif)

ssh-diff
=========
Diff a file over SSH

![](https://raw.githubusercontent.com/vaporup/ssh-tools/master/demos/ssh-diff.gif)

ssh-facts
=========
Get some facts about the remote system

![](https://raw.githubusercontent.com/vaporup/ssh-tools/master/demos/ssh-facts.gif)

ssh-hostkeys
============
prints server host keys in several formats

  ~~~~
   $ ssh-hostkeys remote_host

    (ECDSA)   256     MD5 3d:8e:49:6e:40:34:c6:e4:c8:5f:60:d9:ad:bf:1f:b9
    (ECDSA)   256  SHA256 txYpmPENBWolKBaA5EkCM/y1Hm2DP81jtABFrWUBf/c
  (ED25519)   256     MD5 a8:93:71:f9:13:d0:32:02:c0:e5:1e:f6:b9:db:8c:b0
  (ED25519)   256  SHA256 JZMLzNS2ifdGYv2SrqDodz7+/qaRCTBPukaCnMQqbX8
      (RSA)  2048     MD5 8b:37:63:cd:58:fd:9c:18:93:08:3a:4c:84:64:87:91
      (RSA)  2048  SHA256 WkOzD8BaeljejgTTAwECkByyb4kHdI0pnJB2/gcS1Lk
  ~~~~

### Building and Installing the Debian Package
  ~~~~
  # apt-get install build-essential debhelper help2man

  $ dpkg-buildpackage -us -uc

  # dpkg -i ../ssh-tools_<version>_all.deb
  ~~~~
