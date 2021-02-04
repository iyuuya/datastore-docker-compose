# Datastore docker-compose

- [datastore emulator](https://cloud.google.com/sdk/gcloud/reference/beta/emulators/datastore/)
- [google-cloud-gui](https://github.com/GabiAxel/google-cloud-gui)

Run on docker.

## Setup

copy and edit docker-compose.example.yml

## Run

```
docker-compose up
```

## datastore-env command

```
datastore-env [project_a]
```

## Note
### GUI
Enter the one specified for docker-compose.

- ProjectID => `DATASTORE_PROJECT_ID` 
- API endpoint => `http://{container}:{PORT}`

#### Example
```yaml
services:
  dummy_project:
    build:
      context: ./docker/datastore
    tty: true
    environment:
      DATASTORE_PROJECT_ID: dummy_a
      DATASTORE_LISTEN_ADDRESS: 0.0.0.0:8080
    ports:
      - "10000:8080"
    volumes:
      - dummy_a_data:/opt/data
      - dummy_a_config:/root/.config
    command: --data-dir=/opt/data
```
- ProjectID => `dummy_a` 
- API endpoint => `http://dummy_project:8080`
