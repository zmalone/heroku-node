#!/bin/bash
if [ -z $WEB_MEMORY -a -z $WEB_CONCURRENCY ]
  then
    node "$@"
  else
    node --max_old_space_size=$(($WEB_MEMORY / (2 * $WEB_CONCURRENCY))) "$@"
fi
