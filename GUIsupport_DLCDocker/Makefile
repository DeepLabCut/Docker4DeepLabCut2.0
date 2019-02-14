
PROJECT_NAME=deeplabcut-work
JUPYTER_PORT=9000
TENSORBOARD_PORT=9001
IMAGE_NAME=$(PROJECT_NAME)-image
CONTAINER_NAME=$(PROJECT_NAME)-container
USER_ID=$(shell id -u)
GROUP_ID=$(shell id -g)

docker-build:
	docker build \
		-t $(IMAGE_NAME) \
		--build-arg user_id=$(USER_ID) \
		--build-arg group_id=$(GROUP_ID) \
		-f docker/Dockerfile .

docker-build-no-cache:
	docker build \
		-t $(IMAGE_NAME) \
		--build-arg user_id=$(USER_ID) \
		--build-arg group_id=$(GROUP_ID) \
		-f docker/Dockerfile --no-cache .

docker-run:
	docker run -it --rm --runtime=nvidia \
		--user ubuntu \
		--name $(CONTAINER_NAME) \
		-p $(JUPYTER_PORT):$(JUPYTER_PORT) \
		-p $(TENSORBOARD_PORT):$(TENSORBOARD_PORT) \
		-e DISPLAY=$(DISPLAY) \
		-v /tmp/.X11-unix/:/tmp/.X11-unix \
		-v `pwd`:/work \
		$(IMAGE_NAME) \
		/bin/bash

jupyter:
	jupyter lab --ip=0.0.0.0 --allow-root --port=$(JUPYTER_PORT) \
		--NotebookApp.token='deeplabcut' \
		--NotebookApp.terminado_settings='{"shell_command": ["/bin/bash"]}'

