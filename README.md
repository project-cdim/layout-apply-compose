# layout-apply compose recipe

Accepts Layout Apply requests for configuration updates, initiates transition procedures for HardWare control functions and supports request cancellations.

## Getting Start

### 1. If you didn't use the --recursive option with git clone

Please run the following command to clone the submodule repository.

```sh
git submodule update --init
```

### 2. Environment Setup

#### 2-1. Create a Docker network (if not already created)

```sh
docker network create cdim-net
```

#### 2-2. Build

For the policy-manager-compose environment:

```sh
docker compose up -d --build
```

### 3. Controlling the Containers

#### 3-1. Checking Container Status

Verify that the containers are running by running:

```sh
docker ps
```

#### 3-2. Stopping Containers

Stop the containers using:

```sh
docker compose down
```

#### 3-3. Entering Containers

To enter a container:

```sh
docker exec -it layout-apply /bin/bash
```

Exit the container:

```sh
exit
```

#### 3-4. Viewing Container Logs

For troubleshooting, you can view the logs of a container using:

```sh
docker logs -f layout-apply
docker logs -f layout-apply-dapr
```

### 4. Component Settings File Update

To update the component settings, modify the **./layout-apply/config/layoutapply_config.yaml** file, then rebuild the container.

```sh
docker compose up -d --no-deps layout-apply
```

## License

[Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0)
