FROM foxylion/jenkins-slave

RUN apt-get update && \
  apt-get dist-upgrade -y

## Install Oracle's JDK + JCE 
RUN echo "oracle-java8-unlimited-jce-policy shared/accepted-oracle-license-v1-1 select true" | debconf-set-selections
RUN echo "deb http://ppa.launchpad.net/webupd8team/java/ubuntu xenial main" > /etc/apt/sources.list.d/webupd8team-java-trusty.list
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys EEA14886
RUN apt-get update && \
  apt-get install -y --no-install-recommends oracle-java8-unlimited-jce-policy && \
  apt-get clean all


