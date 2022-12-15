# 1.8 (unreleased)

## Added

- **ssh-last**: like last but for SSH sessions

## Changed

- ssh-facts:
  - Bugfix for newer FreeBSDs
- ssh-ping:
  - Bugfix for Debian Bug #998219 making the package build reproducible
- all
  - Shrink header comments

## Removed

- all
  - Removed HashKnownHosts=no option

    > Some Distros set several options as standard in /etc/ssh/ssh_config.  
    > Debian uses HashKnownHosts=yes by default so entries in ~/.ssh/known_hosts  
    > get mixed with hashed and unhashed entries.  
    > Removing this option, so ssh's default gets used

# 1.7 (2021-10-31)

## Added

- **ssh-force-password**: Enforces password authentication
- ssh-ping
  - Option (-C) to connect/reconnect as soon as the host responds
  - Exit Codes
    - 1: More than 1 request lost
    - 2: All requests lost
  - Environment Variable
    - SSH_PING_NO_COLORS: if set, no colors are shown (like -n)

# 1.6 (2020-01-23)

## Added

- **ssh-certinfo**: Shows validity and information of SSH certificates
- **ssh-keyinfo**: Prints keys in several formats
- ssh-diff: Environment variable to disable remote file checking
- ssh-facts: New explorers ( runlevel, disks )
- ssh-ping: Option to print human readable timestamp (-H)

## Changed

- all
  - shellchecked and fixed errors and warnings (https://www.shellcheck.net)
- ssh-diff:
  - Replaced tput with ANSI Escape codes for color output
  - Pipe output to cat to get a zero exit code for test.sh
- ssh-facts:
  - Update explorers
- ssh-ping:
  - Replaced tput with ANSI Escape codes for color output
  - Changed from Python to Perl for calculating time
- ssh-version:
  - Updated usage (with examples)

# 1.5 (2018-12-23)

## Added

- **ssh-hostkeys**:  Prints server host keys in several formats

## Removed

- Moved packaging files for debian to https://salsa.debian.org/swick-guest/ssh-tools

# 1.4 (2018-02-25)

## Added

- ssh-facts: uptime and last_reboot fact

## Changed

- minor fixes
- improved documentation

# 1.3 (2017-10-04)

## Added

- better OpenBSD support

## Changed

- consistent code formatting and better output
- more robustness
- portable to older Bash versions
- changed license from AGPL-3 to GPL-3 and added debian/copyright

# 1.2 (2017-09-03)

## Added

- **ssh-diff**: Diff a file over SSH
- **ssh-facts**: Get some facts about the remote system

## Changed

- ssh-ping: works now under OSX
- debianized package

# 1.1 (2017-08-20)

## Added

- ssh-ping: colors in statistics output

# 1.0 (2017-08-14)

Initial Release

- **ssh-ping**: Check if host is reachable using ssh_config
- **ssh-version**: Shows version of the SSH server you are connecting to
