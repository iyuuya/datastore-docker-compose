FROM google/cloud-sdk:alpine

run apk add --updaet --no-cache openjdk8-jre \
 && gcloud components install cloud-datastore-emulator beta

VOLUME  /opt/data

COPY start.sh .

ENTRYPOINT ["./start.sh"]
