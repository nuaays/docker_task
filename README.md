### Build and Run containers

1. Install docker, docker-compose
2. Clone docker_task repository
3. Run `docker-compose up -d` from cloned repo
    * These will build images and run docker containers. This may take up to 10 minutes.
4. Once the containers are running you can:
    * Go to http://localhost:8080
    * Start build-jaj-ops-sample-app jenkins job and wait until it finished
    * Check deployed application at http://localhost:8081/boxfuse-sample-java-war-hello


### Directory description

`jenkins_server`  - jenkins server version 1.609.1
<br>`jenkins_swarmcl` - jenkins swarm slave
<br>`tomcat_server`   - tomcat server for running boxfuse-sample-java-war-hello application
<br>`jenkins_job`     - container for updating jenkins job using jenkins-job-builder
<br>`jenkins_volume`  - jenkins data volume container with jenkins_home
<br>`jenkins_plugins` - container with all required jenkins plugins
