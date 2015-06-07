base:
  '*':
    - epel
    - salt.pkgrepo
    - salt.minion
    - firewalld.disabled
  'salt':
    - salt.gitfs.pygit2
    - salt.master

