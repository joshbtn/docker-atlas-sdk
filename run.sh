#!/bin/bash
#--jvmargs -Datlassian.upm.on.demand=true"
docker run -it --rm --name atlas-sdk --publish 2990:2990 joshbtn/atlas-sdk:latest
