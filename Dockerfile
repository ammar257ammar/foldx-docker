FROM        ubuntu:bionic-20191029
MAINTAINER  ammar257ammar@gmail.com

USER root

WORKDIR /foldx

RUN     apt-get update \
        && apt-get install -yq \
            software-properties-common \
            wget \
	    openjdk-8-jdk

COPY foldx .
COPY foldx.sh .
COPY psnpbind-concurrency-foldx-1.0-Stable-jar-with-dependencies.jar .
COPY rotabase.txt .

RUN chmod 755 foldx
RUN chmod 755 foldx.sh
RUN chmod 755 psnpbind-concurrency-foldx-1.0-Stable-jar-with-dependencies.jar

RUN ls

ENTRYPOINT ["java", "-jar", "/foldx/psnpbind-concurrency-foldx-1.0-Stable-jar-with-dependencies.jar"]
CMD ["-h"]
