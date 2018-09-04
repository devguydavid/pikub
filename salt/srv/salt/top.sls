base:
  'roles:kubernetes-host':
    - match: grain
    - docker-package
    - disable-swap
    - boot-cmdline

