#!/usr/bin/env bash

set -e
set -u
set -o pipefail

###
### Globals
###

# Set via Dockerfile
# MY_USER
# MY_GROUP
# HTTPD_START
# HTTPD_RELOAD

###
### Source libs
###
init="$( find "${CONFIG_DIR}" -name '*.sh' -type f | sort -u )"
for f in ${init}; do
    # shellcheck disable=SC1090
    . "${f}"
done



#############################################################
## Basic Settings
#############################################################

###
### Set Debug level
###
DEBUG_LEVEL="$( env_get "DEBUG_ENTRYPOINT" "0" )"
log "info" "Debug level: ${DEBUG_LEVEL}" "${DEBUG_LEVEL}"

DEBUG_RUNTIME="$( env_get "DEBUG_RUNTIME" "0" )"
log "info" "Runtime debug: ${DEBUG_RUNTIME}" "${DEBUG_LEVEL}"


###
### Change uid/gid
###
set_uid "NEW_UID" "${MY_USER}"  "${DEBUG_LEVEL}"
set_gid "NEW_GID" "${MY_GROUP}" "${DEBUG_LEVEL}"


###
### Set timezone
###
set_timezone "TIMEZONE" "${DEBUG_LEVEL}"


################################################################################
# RUN
################################################################################

log "info" "Starting webserver" "${DEBUG_LEVEL}"
exec ${HTTPD_START}
