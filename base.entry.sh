#!/bin/bash

USER_ID=${LOCAL_USER_ID:-9001}

useradd --shell /bin/bash -u $USER_ID -o -c "" -m user
export HOME=/home/user

mkdir -p $APP_HOME

chown -R user $APP_HOME

exec /usr/local/bin/gosu user "$@"