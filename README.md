# Podman Demo

## Show podman images
podman images

## Remove images
podman image rm <Image ID | name>
podman image rm -a

## Show Running Containers
podman ps

## Build Image from Containerfile
sudo podman build -t kmonteir15/server-container-demo . --tls-verify=false

## Run Image as Container 
podman run -d -p 8080:8080 --name local-demo localhost/kmonteir15/server-container-demo
podman run -d -p 8081:8080 --name remote-image-demo localhost/kmonteir15/server-container-demo

## Push Image to Registry
podman image push <IMAGE ID> docker://quay.io/kmonteir15/server-container-demo --tls-verify=false

## Pull Image to Registry
podman pull quay.io/kmonteir15/server-container-demo --tls-verify=false 



