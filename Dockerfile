FROM        ubuntu:18.04
MAINTAINER  ammar257ammar@gmail.com

USER root

WORKDIR /foldx

COPY foldx .
COPY foldx.sh .
COPY rotabase.txt .

RUN chmod 755 foldx
RUN chmod 755 foldx.sh

RUN ls

ENTRYPOINT ["./foldx.sh"]
