#!/bin/bash
run="docker rm `docker ps -a -q`"
${run}
echo ${run}

