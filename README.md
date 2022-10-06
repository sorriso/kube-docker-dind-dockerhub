you like this work ?

[!["You like it ?"](https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png)](https://www.buymeacoffee.com/sorriso)

# kube-docker-dind-dockerhub

Kubernetes yaml configuration files for docker-dind using docker hub image (with small tuning)

## prerequisite:

- Rancher desktop (or equivalent) installed locally & running with "containerd" selected as main command tool

## How to make it working :

- run /build/0-build-image.sh to build & upload the image "l_docker:dind" in k8s.io local repository

- use the image "l_docker:dind" as template in your jenkins build
