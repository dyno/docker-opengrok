#!/bin/bash

set -x

source opengrok.env

# OPENGROK_WEBAPP_CFGADDR=none
#   no notification to the application server which will be restarted in another container.
# OPENGROK_SCAN_REPOS=off
#   no history to speedup the index process

docker run -t -i $OPENGROK_VOL_MAP -w /opt/opengrok $OPENGROK_INDEX_IMAGE  \
  bash -c 'OPENGROK_WEBAPP_CFGADDR=none OPENGROK_SCAN_REPOS=off ./OpenGrok index'

