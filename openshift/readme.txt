Created an Openshift project with Dockerfile.openshift-performance.

$ docker build --tag nimiq/trt -f Dockerfile.openshift-performance .
$ docker push nimiq/trt

Then created a project in Openshift with 8 GB RAM, 4 cores.
