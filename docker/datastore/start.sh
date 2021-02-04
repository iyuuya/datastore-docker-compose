#!/bin/sh

echo "===> Run daatastore emulator"
gcloud beta emulators datastore start \
  --project $DATASTORE_PROJECT_ID \
  --host-port ${DATASTORE_LISTEN_ADDRESS} \
  ${options}
