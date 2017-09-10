finish Debian packaging

ssh-ping
========

- [ ] check if python is available ( OpenBSD )

ssh-diff
========

- [ ] Implement diffing directories (without file contents)

see 

- https://stackoverflow.com/questions/21844242/diff-between-two-remote-folders-through-ssh
- https://stackoverflow.com/questions/20969124/how-to-diff-directories-over-ssh

e.g.

with file size

```
diff -u --label remote --label local <(ssh root@remote find /etc -printf '"%8s %P\n"' | sort) <(find /etc -printf '%8s %P\n' | sort)

```

without file size

```
diff -u --label remote --label local <(ssh root@remote find /etc -printf '"%P\n"'     | sort) <(find /etc -printf '%P\n'     | sort)


```

Check if folders exist on both systems before diffing...

