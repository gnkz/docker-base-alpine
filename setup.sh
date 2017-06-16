#!/bin/sh

USER_ID=${LOCAL_USER_ID:-9001}
APP_DIR=${APP_HOME:-/app}
USERNAME=app

adduser -s /bin/sh -u $USER_ID -D -g $USERNAME $USERNAME

mkdir -p $APP_DIR

chown -R $USERNAME $APP_DIR
