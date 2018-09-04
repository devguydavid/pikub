/boot/cmdline.txt:
  file.managed:
    - source: salt://cmdline.txt
    - user: root
    - group: root
    - mode: 755
    - backup: minion
