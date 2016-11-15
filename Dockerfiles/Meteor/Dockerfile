FROM ubuntu:16.04

# Meteor installieren
RUN apt-get update
RUN apt-get install -y curl
RUN apt-get install language-pack-en -y
RUN curl https://install.meteor.com/ | sh
#RUN apt-get install dos2unix

COPY /app /app

COPY entrypoint.sh /
#RUN dos2unix /entrypoint.sh
RUN chmod u+x /entrypoint.sh

EXPOSE 3000

ENTRYPOINT /entrypoint.sh


RUN useradd -ms /bin/bash meteoruser
RUN chown -cR meteoruser /app
USER meteoruser
WORKDIR /app
RUN meteor npm install --save highcharts
RUN meteor reset
ENV MONGO_URL mongodb://mongodb:27017/meteor