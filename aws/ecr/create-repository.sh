#!/bin/bash

export REPOSITORY_NAME=tool/superset

aws ecr \
create-repository \
--repository-name $REPOSITORY_NAME
