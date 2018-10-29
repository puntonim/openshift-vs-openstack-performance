Monday 2018.10.29 17:47:37

I run a little benchmark to test CERN Openstack VS CERN Openshift infra performance.

SPECS
- Openshift, 1 pod with 4 cores and 8 GB RAM, Dockerfile from python:latest
- Openstack, 1 instance m2.large (4 cores and 8 GB RAM), standard volume, Ubuntu 18.04 server
- my macbook, i5 4 cores and 16 GB RAM

RESULTS
- Network:
    very fast for both Openshift and Openstack
- CPU performance with Python:
    ~30% Openstack faster than Openshift
    ~7% Openstack faster than my macbook
- Disk IO:
    results are not clear, might be influenced by many factors
    writing seems slow in Openshift and very slow in Openstack
    reading seems very slow in Openshift and very fast in Openstack
    note: attaching proper volume types might change the performance entirely

INTERPRETATION
Openshift seems good for light weight apps network-bound
Openstack seems better for cpu-bound apps (and maybe for disk-bound as there are a few volumes types options)
