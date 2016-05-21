The Goal
========

I want to use [OpenGrok](https://github.com/OpenGrok/OpenGrok) to help myself to read code.
The process involved
  * index the code.
  * deploy the webapps and server the search request.
In addition to that,
  * I want to use latest OpenGrok code

the Docker container concept is very appealing to create an application independent of
it's running environment. Like Java for program. This Stackoverflow thread capture [the
spirit](http://stackoverflow.com/questions/26734402/how-to-upgrade-docker-container-after-its-image-changed)
  * The build and index process are very opengrok specific so I created my own docker image `Dockerfile`.
  * The Application Server is pretty standard so I use `tomcat:8-jre8`.

The Setup
=========

* `opengrok.env`
  - souce code `~/gitroot`
  - the index `~/opengrok/data`
  - OpenGrok source code `git clone https://github.com/OpenGrok/OpenGrok.git`


The Steps
=========

* Create Docker image `dynofu/codeserver:v2`:
  - `docker build -t dynofu/codeserver:v2 .`

* Build the OpenGrok to produce `source.war`:
  - `./run_opengrok_build.sh`

* Index the source code with `OpenGrok index`:
  - `./run_opengrok_index.sh`

* Serve the search with docker image `tomcat:8-jre8`:
  - `./run_opengrok_serve.sh`

