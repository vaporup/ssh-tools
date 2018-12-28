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

  ~~~~
  $ ssh-ping -c 3 kim

  SSHPING kim
  Reply from kim: ssh_seq=1 time=109 ms
  Reply from kim: ssh_seq=2 time=136 ms
  Reply from kim: ssh_seq=3 time=141 ms

  --- kim ping statistics ---
  3 requests transmitted, 3 requests received, 0% request loss
  ~~~~

ssh-version
===========
Shows version of the SSH server you are connecting to

  ~~~~
  $ ssh-version kim

  Remote protocol version 2.0, remote software version OpenSSH_7.2p2 Ubuntu-4ubuntu2.6
  ~~~~

ssh-diff
=========
Diff a file over SSH

  ~~~~
  $ ssh-diff /etc/hosts kim

  Comparing kim:/etc/hosts (<) with /etc/hosts (>)

  1,2c1,2
  < 127.0.0.1 localhost
  < 127.0.1.1 kim
  ---
  > 127.0.0.1 localhost 
  > 127.0.1.1 blinky
  ~~~~

ssh-facts
=========
Get some facts about the remote system

  ~~~~
  $ ssh-facts root@kim

  OS=ubuntu
  OS_VERSION=16.04
  UPTIME=7 days, 22 hours, 25 minutes
  LAST_REBOOT=Dec 20 19:34:27 2018
  CPU_CORES=2
  CPU_SOCKETS=2
  HOSTNAME=kim
  KERNEL_NAME=Linux
  MACHINE=x86_64
  MACHINE_TYPE=virtual_by_kvm
  MEMORY=4045996
  INIT=systemd
  LSB_CODENAME=xenial
  LSB_DESCRIPTION=Ubuntu 16.04.5 LTS
  LSB_ID=Ubuntu
  LSB_RELEASE=16.04
  ~~~~


ssh-hostkeys
============
Prints server host keys in several formats

  ~~~~
   $ ssh-hostkeys remote_host

    (ECDSA)   256     MD5 3d:8e:49:6e:40:34:c6:e4:c8:5f:60:d9:ad:bf:1f:b9
    (ECDSA)   256  SHA256 txYpmPENBWolKBaA5EkCM/y1Hm2DP81jtABFrWUBf/c
  (ED25519)   256     MD5 a8:93:71:f9:13:d0:32:02:c0:e5:1e:f6:b9:db:8c:b0
  (ED25519)   256  SHA256 JZMLzNS2ifdGYv2SrqDodz7+/qaRCTBPukaCnMQqbX8
      (RSA)  2048     MD5 8b:37:63:cd:58:fd:9c:18:93:08:3a:4c:84:64:87:91
      (RSA)  2048  SHA256 WkOzD8BaeljejgTTAwECkByyb4kHdI0pnJB2/gcS1Lk
  ~~~~
