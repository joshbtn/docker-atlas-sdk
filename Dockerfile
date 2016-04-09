FROM java:8

ENV JIRA_VERSION 7.1.4

RUN \
  	apt-get update && \
  	apt-get install apt-transport-https &&\
  	echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list && \
  	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73 && \
  	apt-get update && \
  	apt-get install atlassian-plugin-sdk=6.2.4 && \
	apt-get clean && \
  mkdir /srv/atlassian/ && \
  mkdir /srv/atlassian/jira && \
  mkdir /srv/atlassian/confluence && \
  cd /srv/atlassian/jira && \
  atlas-run-standalone --product jira --version $JIRA_VERSION --jvmargs -Datlassian.upm.on.demand=true

EXPOSE 2990
