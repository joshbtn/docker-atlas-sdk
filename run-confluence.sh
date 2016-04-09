docker run --detach --name atlas-sdk --publish 1990:1990 joshbtn/atlas-sdk:latest -c "atlas-run-standalone --product confluence --version $CONFLUENCE_VERSION --jvmargs -Datlassian.upm.on.demand=true"
