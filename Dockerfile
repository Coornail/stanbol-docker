FROM dockerfile/java:openjdk-7-jdk

EXPOSE 8080:8080

RUN apt-get update &&\
  apt-get -y upgrade &&\
  apt-get clean

RUN wget --quiet http://dev.iks-project.eu/downloads/stanbol-launchers/0.12.0/org.apache.stanbol.launchers.full-0.12.0.jar

CMD ["/bin/bash"]
