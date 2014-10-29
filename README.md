Docker image for Apache Stanbol
==============

Simple docker image that will install Apache Stanbol v0.12 and expose port 8080 to start playing with it.

To run:
```
git clone git@github.com:Coornail/stanbol-docker.git
cd stanbol-docker
docker build -t stanbol-docker .
docker run -p 8080:8080 -i stanbol-docker java -Xmx1g -XX:MaxPermSize=256m -jar org.apache.stanbol.launchers.full-0.12.0.jar
```
