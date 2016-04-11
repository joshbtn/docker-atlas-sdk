#!/bin/bash
#--jvmargs -Datlassian.upm.on.demand=true"

#docker run --detach --name atlas-sdk-jira -p 2990:2990 joshbtn/atlas-sdk-jira:latest
docker run -it --rm --name atlas-sdk-jira -p 2990:2990 joshbtn/atlas-sdk-jira:latest
