.PHONY build up down run
DOCKER_COMPOSE := docker-compose

OS :=$(shell uname)

build:
ifeq ($(OS), Linux)
	@echo "Runing in $(OS)"
endif
ifeq ($(OS), Windows_NT)
	@echo "Please add Windows commands"
	$(DOCKER_COMPOSE) build

up:
	$(DOCKER_COMPOSE) up -d

down:
	$(DOCKER_COMPOSE) down

clean:
	docker system prune -y
