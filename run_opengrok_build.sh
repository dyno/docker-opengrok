#!/bin/bash

source opengrok.env

docker run -t -i $OPENGROK_VOL_MAP -w /opt/opengrok $OPENGROK_BUILD_IMAGE ant

