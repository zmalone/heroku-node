#!/bin/bash
if [ -z $WEB_MEMORY ]
  then
    node "$@"
  else
    node --max_old_space_size=$(($WEB_MEMORY / $WEB_CONCURRENCY)) "$@"
fi
