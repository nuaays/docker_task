#!/bin/bash

HOST_IP=$(ip route | grep ^default | awk '{print $3}')
echo "url=http://$(ip route | grep ^default | awk '{print $3}'):8080" >> /tmp/jenkins_jobs.ini
while ! curl --output /dev/null --silent --head --fail http://$HOST_IP:8080; \
    do sleep 1; echo -n .; done \
    && jenkins-jobs --conf /tmp/jenkins_jobs.ini update /tmp/build-jaj-ops-sample-app.yaml
