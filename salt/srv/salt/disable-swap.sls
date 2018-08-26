disable-swap:
  cmd.script:
    - source: salt://disable-swap.sh
    - cwd: /tmp
    - user: root
    - unless: test $(swapon --show | wc -l) = "0"
