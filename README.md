# Docker - Robotframework-Web
[![Docker Stars](https://img.shields.io/docker/stars/charleshsiao/docker-robotframework-web.svg)](https://hub.docker.com/r/charleshsiao/docker-robotframework-web/)
[![Docker Pulls](https://img.shields.io/docker/pulls/charleshsiao/docker-robotframework-web.svg)](https://hub.docker.com/r/charleshsiao/docker-robotframework-web/)
[![Docker Automated](https://img.shields.io/docker/automated/charleshsiao/docker-robotframework-web.svg)](https://hub.docker.com/r/charleshsiao/docker-robotframework-web/) <br>
  Docker file for Web application UI automation testing with selenium & phantomjs. 

## Introduction
  This Dockerfile can create a docker image which can use for web application UI automation testing.<br>
  Leverage selenium for web UI automation and phantomjs as headless webKit.

## Get Started

Run docker with robotframwork CLI command with specific ${RF_TAG}
      $ docker run --rm                                  \
        -v ${PATH}/rf-scripts:/rf-scripts                \
        -it charleshsiao/robotframework-web              \
        robot -i ${RF_TAG} /rf-scripts
