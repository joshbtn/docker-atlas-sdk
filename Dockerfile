FROM java:8

ENV JIRA_VERSION 7.1.4
ENV SDK_VERSION 6.2.4

RUN \
  	apt-get update && \
  	apt-get install apt-transport-https &&\
  	echo "deb https://sdkrepo.atlassian.com/debian/ stable contrib" >>/etc/apt/sources.list && \
  	apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys B07804338C015B73 && \
  	apt-get update && \
  	apt-get install atlassian-plugin-sdk=$SDK_VERSION && \
	apt-get clean && \
  mkdir /srv/atlassian/ && \
  mkdir /srv/atlassian/jira && \
  mkdir /srv/atlassian/confluence && \
  cd /srv/atlassian/jira && \
  atlas-run-standalone --product jira --version $JIRA_VERSION

EXPOSE 2990

COPY $PWD/content/start-standalone.sh /srv/atlassian/jira/start-standalone.sh

CMD ["/srv/atlassian/jira/start-standalone.sh"]
