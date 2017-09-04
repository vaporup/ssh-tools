ssh-facts
=========
- Some Fedora 25 installations have no lsb_release installed by default

  Output:

  LSB_CODENAME=
  LSB_DESCRIPTION=
  LSB_ID=
  LSB_RELEASE=

- make it possible to select which facts should be returned

ssh-diff
========

- don't diff if SSH connection was not successful
- don't diff if local file not found
