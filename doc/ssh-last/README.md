### NOTES

- The ```-?``` option requires ```perl-doc```  
  otherwise the full source code is shown instead of the trailing POD only
- Documentation like manpages can be created with ```pod2man``` or similar tools

### TESTS

```ssh-last``` was (except the strikedtrough ones) successfully tested on the following systems:

- FreeBSD
- DragonFlyBSD
- OpenBSD
- pfSense
  - 2.6.0
- OPNSense
- Guix
  - 1.3.0
- Slackware
  - 15
- AlmaLinux
  - 8
  - 9
- nixOS
- vyos (Debian)
- Parabola
  - systemd Edition
  - ~~openRC Edition~~
- Manjaro
- Arch
- Alpine
- Fedora
  - 34
    - ```dnf install perl-Time-Piece```
- CentOS Stream
  - journal not persistent
  - ```dnf install perl-Time-Piece```
  - ```dnf install perl-Memoize```
- Rocky Linux
  - 8.6
    - journal not persistent
    - ```dnf install perl-Time-Piece```
    - ```dnf install perl-Memoize```
- Devuan
  - 2
  - 3
  - 4
  - 5
- Debian
  - Sid
    - journal persistent
    - https://micronews.debian.org/2021/1628949223.html
  - Bookworm
    - journal persistent
    - https://micronews.debian.org/2021/1628949223.html
  - Bullseye
    - journal persistent
    - https://micronews.debian.org/2021/1628949223.html
  - Buster
    - journal not persistent
- Ubuntu
  - ~~14.04~~
    - Too old: sshd logs ```Disconnect``` in other format (and without port)
  - 16.04
    - journal not persistent
  - 18.04
  - 20.04
  - 22.04
- Raspbian
  - Bullseye
- Parrot
  - 5
- PureOS
  - 9
  - 10
- Pardus
  - 21.3
- Trisquel
  - 9
  - 10
- OpenSuse
  - TumbleWeed
  - Leap
    - 15.2
      - journal not persistent
      - has logfiles
    - 15.3
      - journal not persistent
      - has NO logfiles
    - 15.4
      - journal not persistent
      - has logfiles again
- void Linux
  - no Perl installed
    - ```xbps-install perl```
  - no journalctl
  - no logfiles
    - https://docs.voidlinux.org/config/services/logging.html
    - ```xbps-install rsyslog```
    - ```ln -s /etc/sv/rsyslogd/ /var/service```
    - /var/log/messages
    - log format of OpenSUSE leap matches

### REFS

- https://www.golinuxcloud.com/enable-persistent-logging-in-systemd-journald/
- https://linuxconfig.org/introduction-to-the-systemd-journal

### TODOS

- OSX
  - https://stackoverflow.com/questions/334686/how-can-i-detect-the-operating-system-in-perl
  - ```sw_vers```
  - older editions (10.8.5) still have /var/log/ and could be made to work
    - ```cat /var/log/system.log```
  - newer editions use syslog or some log command
    - https://stackoverflow.com/questions/43382825/where-to-find-sshd-logs-on-macos-sierra
    - https://discussions.apple.com/thread/7910499
    - https://discussions.apple.com/thread/1735247
