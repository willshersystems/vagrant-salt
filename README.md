# EL 7 Salt Development & Bootstrap Environment

This is a general purpose Salt development environment.

To launch a master and minion run

```sh
vagrant up
salt-ssh '*' state.highstate
```

Files been worked on go in /srv, which gets shared with the
salt master. `vagrant ssh salt` to login to the salt master
and run the salt commands from there.

