/boot/cmdline.txt:
  file.managed:
    - source: salt://cmdline.txt
    - user: root
    - group: root
    - mode: 755
    - backup: minion

# Note that, due to the reboot, for the states after this one to apply you'll
# either have to run highstate twice or add 'startup_states: highstate' to the
# minion configs.

system.reboot:
  module.run:
    - onchanges:
      - file: /boot/cmdline.txt
