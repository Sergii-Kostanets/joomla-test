THIS_FILE := $(lastword $(MAKEFILE_LIST))
.PHONY: restart
default: start

start:
	docker container start joomla
	docker container start joomladb

stop:
	docker container stop joomla
	docker container stop joomladb

restart:
	docker container restart joomla
	docker container restart joomladb

logs:
	docker logs joomla
	docker logs joomladb

status:
	docker ps -a -f name=joomla
	docker ps -a -f name=joomladb

inspect:
	docker volume inspect joomla-data
	docker volume inspect mysql-data

pull:
	docker pull mysql:5.7
