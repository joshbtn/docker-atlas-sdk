#!/bin/sh
cd /srv/atlassian/jira
atlas-run-standalone -DinstallPlugin='false' -DskipTests='true' -DskipManifestValidation='true' --product jira --version $JIRA_VERSION
