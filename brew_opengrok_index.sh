#!/bin/bash

source brew_opengrok.env

OPENGROK_WEBAPP_CFGADDR=none OPENGROK_SCAN_REPOS=off $OPENGROK_BASE/OpenGrok index
