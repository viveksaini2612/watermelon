# watermelon
===================================

**Task** 

The URL has a repository for the Apache log generator. I want you to containerize the above application and also write a pod spec (yaml) that will run the container.

https://github.com/rsomu/apclog

**Solution**

## Create a dockerfile 

<img width="1439" alt="Screenshot 2024-01-09 at 1 03 57 PM" src="https://github.com/viveksaini2612/watermelon/assets/51254973/cd73154b-2c15-4636-b3f1-e3799a3e0272">

## Build image

    docker build -t watermelon_log:latest .

## Run the container

    docker run -dit --name wm_container watermelon_log

## Check inside containers logs are generating

  	git init docker exec -it 0f0ed2f8b /bin/bash
    
<img width="1439" alt="Screenshot 2024-01-09 at 1 06 23 PM" src="https://github.com/viveksaini2612/watermelon/assets/51254973/803838fe-e42d-48e3-bc19-369ec84964b1">


### push image to docker hub

## Its now available to use in Kubernetes manifest 

### for example 

### Create pod yaml file

<img width="658" alt="Screenshot 2024-01-09 at 2 41 46 PM" src="https://github.com/viveksaini2612/watermelon/assets/51254973/c9d4c0a0-e4de-4a12-974d-70ead40cae72">

### Create with kubectl create -f pod.yaml command

<img width="658" alt="Screenshot 2024-01-09 at 2 42 02 PM" src="https://github.com/viveksaini2612/watermelon/assets/51254973/ade0b665-f4ba-4936-b07c-a43885e4e4d7">

## Thankyou


