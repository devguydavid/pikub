docker-repo:
  pkgrepo.managed:
    - humanname: Docker repo
    - name: deb [arch=armhf] https://download.docker.com/linux/raspbian stretch stable
    - keyurl: https://download.docker.com/linux/raspbian/gpg
    - require:
      - pkgrepo: docker-repo-cleanup

docker-repo-cleanup:
  pkgrepo.absent:
    - name: deb [arch=amd64] https://download.docker.com/linux/ubuntu stretch stable
  
docker-ce:
  pkg:
    - installed
    - require:
      - pkgrepo: docker-repo
