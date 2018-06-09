# Dockerized Nodejs Hello World Web App.
This is a project that has a Nodejs Web Api.  Project uses an express node server and includes Dockerfile to dockerize the whole thing.  It is recommended that 'nom install' happens in a build process such as Jenkins or Bamboo.  However for the purpose of the tutorial I have npm install execute when the container spins up.  Alternatively, you could move 'npm install' into the RUN command to have the node_modules pulled in at build time of the image.  

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. 

## Prerequisites

To get the application running on your machnie in docker you need to install nodejs && docker and then run the following commands.


Build docker image.
```
doceker build . -t nodejs_hello_world:1
```
Run docker image.  Will create a container and bind port 1337 of local machine to 1337 of container. 
```
doceker run nodejs_hello_world:1 -p 1337:1337
```

### Installing

A step by step series of examples that tell you how to get a development env running

Build docker image.
```
doceker build . -t nodejs_hello_world:1
```
Run docker image and bind port.
```
doceker run nodejs_hello_world:1 -p 1337:1337
```

We use [SemVer](http://semver.org/) for versioning. For the versions available, see the [tags on this repository](https://github.com/your/project/tags). 

## Authors

* **Zackery Parkhurst* - *Curious Software Dev* - [Contact Me!](mailto://zackeryddparkhurst@gmail.com) 


## Acknowledgments

* See also [react github](https://github.com/vlucas/universal-react-helloworld) repo where hello-world react library was found.
