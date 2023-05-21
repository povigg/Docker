## Containerizing vprofile project

Source code: https://github.com/devopshydclub/vprofile-project/tree/vp-docker

![image](https://github.com/povigg/Docker/assets/81630547/284ecf2e-88e1-4139-b7fc-4aaef576f509)

## Docker images

I have created three custom docker images for tomcat, mysql and nginx. To achieve this i have wrote Dockerfiles which contain custom settings
Rabbitmq and memcahed used default images from Docker hub

## Docker Compose
Source code contais application.properties file. Names for docker containers were used as per file

Docker compose file has two volumes created for DB and Tomcat. This will map direcoty on local machine to docker.
Exposed ports for containers
Some default settings (env. variables). Use docker inspect 'image name' to clarify info including port numbers

docker-compose up cmd to run dopcker-compose.yaml file
