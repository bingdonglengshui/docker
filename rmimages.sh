#!/bin/bash
if (($#<1))
then
echo "输入要删除的镜像id"
exit
fi
docker image inspect --format='{{.RepoTags}} {{.Id}} {{.Parent}}' $(docker image ls -q --filter since=$1)
