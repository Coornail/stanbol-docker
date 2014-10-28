FROM dockerfile/java

RUN apt-get update &&\
  apt-get -y upgrade &&\
  apt-get -y install maven &&\
  apt-get clean

RUN wget http://apache.rediris.es/stanbol/apache-stanbol-0.12.0-source-release.zip &&\
  unzip apache* &&\
  rm *.zip &&\
  mv apache*/* .

RUN mvn clean install

CMD ["/bin/bash"]
