FROM ubuntu:16.04
#FROM debian:jessie # no openjdk-8-jdk ...
MAINTAINER Dyno Fu dyno.fu@gmail.com

RUN apt-get update && apt-get dist-upgrade -y

# essential
RUN apt-get install -y build-essential git vim

# java
RUN apt-get install -y openjdk-8-jdk ant

# opengrok
RUN apt-get install exuberant-ctags
