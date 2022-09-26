THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: up down pull start stop
default: up

build:
	docker-compose up -d --build

up:
	docker-compose up -d

down:
	docker-compose down

pull:
	docker pull joomla
	docker pull mysql:5.7

start:
	docker-compose start

stop:
	docker-compose stop
