# layout-apply compose recipe

## Getting Start

### 1. Environment Setup

1. Create a Docker network (if not already created)

    ``` sh
    docker network create cdim-net
    ```

1. Build

    For the layout-apply-compose environment

    ```sh
    docker compose up -d --build
    ```

### 2. Controlling the Containers

#### 2-1. Checking Container Status

Verify that the containers are running by running:

```sh
docker ps
```

#### 2-2. Stopping Containers

Stop the containers using:

```sh
docker compose down
```

#### 2-3. Entering Containers

To enter a container:

```sh
docker exec -it layout-apply /bin/bash
```

Exit the container:

```sh
exit
```

#### 2-4. Viewing Container Logs

For troubleshooting, you can view the logs of a container using:

```sh
docker logs -f layout-apply
docker logs -f layout-apply-dapr
```

### 3. Component Settings File Update

To update the component settings, modify the **./layout-apply/config/layoutapply_config.yaml** file, then rebuild the container.

```sh
docker compose up -d --no-deps layout-apply
```

## License

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
