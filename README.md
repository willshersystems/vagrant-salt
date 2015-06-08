# EL 7 Salt Development & Bootstrap Environment

This is a general purpose Salt development environment and
salt master bootstapper.

It contains a couple of submodules so use the
`git clone --recursive`.

To launch a master and minion run

```sh
vagrant up
salt-ssh '*' state.highstate
```

Files been worked on go in `/srv`, which gets shared with the
salt master. `vagrant ssh salt` to login to the salt master
and run the salt commands from there.

It can also be use to bootstrap a new master server. Edit
`vagrant/etc/salt/roster` and add the server(s)
accordingly. Edit `vagrant/etc/salt/master` to set initial
master settings. It is intended that post bootstrap the
master will manage its own configuration. Actually getting
the files under `/srv`, other than with Vagrant, isn't added
as yet.

