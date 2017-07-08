#!/bin/bash

ARGS="$@"

# The `script` command fakes a TTY, otherwise `srcds_run` stalls out
script -c "./srcds_run -game dod $ARGS" /dev/null
