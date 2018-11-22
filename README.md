# messageApp
This app was developed based on the lab [12 Factor Application](https://github.com/docker/labs/tree/master/12factor)

In order to run the messageApp you should follow these steps:
## Alternative 1 - use the docker-compose.yml file (requires docker and docker-compose)
- copy the contents of the `docker-compose.yml` file to your computer and run 
```bash
docker-compose up -d
```
Docker will pull the images to your computer and start all services: `app`, `mongo` and `kv` (redis).

## Alternative 2 - build your own image based on source code (requires git, docker and docker-compose)
- clone this repo 
```bash
git clone https://github.com/javalisson/messageApp.git
```
- go inside the messageApp folder and build your docker image based on Dockerfile
```bash
docker build -t message-app:my-tag .
```
- modify the docker-compose.yml file to change the name of the image used by the app, from `"javalisson/message-app:02"` to `"message-app:my-tag"` 
- run the app with docker-compose
```bash
docker-compose up -d
```

After you used alternative 1 or 2, your services should be up and running. You can check this accessing the logs of the `app` service 
```bash 
docker-compose logs app
```

If everything is OK you should be able to access the web interface on your browser on `localhost:8000`. In a next version I'll explain how to create and read messages using cURL.

# message-app

a [Sails v1](https://sailsjs.com) application


### Links

+ [Sails framework documentation](https://sailsjs.com/get-started)
+ [Version notes / upgrading](https://sailsjs.com/documentation/upgrading)
+ [Deployment tips](https://sailsjs.com/documentation/concepts/deployment)
+ [Community support options](https://sailsjs.com/support)
+ [Professional / enterprise options](https://sailsjs.com/enterprise)


### Version info

This app was originally generated on Mon Nov 19 2018 19:26:07 GMT-0200 (-02) using Sails v1.1.0.

<!-- Internally, Sails used [`sails-generate@1.16.0`](https://github.com/balderdashy/sails-generate/tree/v1.16.0/lib/core-generators/new). -->



<!--
Note:  Generators are usually run using the globally-installed `sails` CLI (command-line interface).  This CLI version is _environment-specific_ rather than app-specific, thus over time, as a project's dependencies are upgraded or the project is worked on by different developers on different computers using different versions of Node.js, the Sails dependency in its package.json file may differ from the globally-installed Sails CLI release it was originally generated with.  (Be sure to always check out the relevant [upgrading guides](https://sailsjs.com/upgrading) before upgrading the version of Sails used by your app.  If you're stuck, [get help here](https://sailsjs.com/support).)
-->

