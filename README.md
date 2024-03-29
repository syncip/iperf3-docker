# iperf3 docker container

A docker image for iperf3 with some extras.

## Features
* Multi-instance capable (run several instances in parallel)  
* `--one-off` integration from iperf3  
* small image size

## docker-compose.yml

```
services:
    iperf3:
        container_name: iperf3
        image: r600/iperf3:latest
        environment:
          - "port=5201"   # optional, start port
          - "one=true"    # optional, shutdown after one run
          - "instances=5" # optional, number of instances
        ports:
            - 5201-5205:5201-5205
```
## Environment variables
* `port`: The Port where iperf3 is running (default `5201`)  
* `one`: stop iperf after one run (default `false`)  
* `instances`: Start more then one instance of iperf3 (default `1`) (if you start 5 instances the port range will start at port and ends at port+instances)  

