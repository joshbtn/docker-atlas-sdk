#!/bin/bash
#--jvmargs -Datlassian.upm.on.demand=true"
#docker run -it --rm --name atlas-sdk -p 2990:2990 joshbtn/atlas-sdk:latest
docker run --detach --name atlas-sdk-jira -p 2990:2990 joshbtn/atlas-sdk-jira:latest
