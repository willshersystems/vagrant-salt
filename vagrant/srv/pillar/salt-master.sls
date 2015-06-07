salt:
  master:
    auto_accept: True
    fileserver_backend:
      - git
      - roots
    file_roots:
      base:
        - /srv/salt/base
      develop:
        - /srv/salt/develop
    pillar_roots:
      base:
        - /srv/pillar/base
      develop:
        - /srv/pillar/develop
    gitfs_remotes:
      - git://github.com/willshersystems/epel-formula.git
      - git://github.com/willshersystems/salt-formula.git
