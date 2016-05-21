#!/bin/bash

source opengrok.env

#docker run -t -i \
docker run --rm \
  $OPENGROK_VOL_MAP \
  -v $HOST_OPENGROK_BASEDIR/dist/source.war:/usr/local/tomcat/webapps/source.war \
  -p 8080:8080 $OPENGROK_SERVE_IMAGE


