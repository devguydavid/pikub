kubeadm-repo:
  pkgrepo.managed:
    - humanname: Kubeadm repo
    - name: deb http://apt.kubernetes.io/ kubernetes-xenial main
    - key_url: https://packages.cloud.google.com/apt/doc/apt-key.gpg

kubeadm:
  pkg:
    - installed
    - require:
      - pkgrepo: kubeadm-repo
