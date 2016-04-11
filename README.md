# Atlassian SDK

This uses the official Java image.  
Pulls the sdk from the https://sdkrepo.atlassian.com/debian/ stable contrib.

# Running the sdk
Use the `./run.sh` to start a standalone instance of jira that will bind to port 2990 on localhost.

Login to http://localhost:2990/jira/ using the user admin with password admin.

TODO:
Document workflow to map volumes locally for development on local desktop.


Executing: /usr/share/atlassian-plugin-sdk-6.2.4/apache-maven-3.2.1/bin/mvn com.atlassian.maven.plugins:maven-amps-plugin:6.2.3:run-standalone -gs /usr/share/atlassian-plugin-sdk-6.2.4/apache-maven-3.2.1/conf/settings.xml -Dproduct='jira' -Dproduct.version='7.1.4'
