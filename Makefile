# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help.
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

# Run the container(s)
start: ## Spin up the project
	docker-compose up -d

# Build and Run the container(s)
build: ## Build up the project
	docker-compose up -d  --build

# Run the container(s)
ps: ## Show all running containers
	docker-compose ps

stop: ## Stop the project
	docker-compose stop

destroy: ## Destroy all containers
	docker-compose stop
	docker-compose rm -f

install: ## Launch check style and static analysis
	docker-compose run node npm install

introspect: ## Launch check style and static analysis
	docker-compose run node npm run introspect

logs: ## tail node logs container
	docker-compose logs -f node

connect: ## connect to node container
	docker-compose exec node bash

boum: ## destroy / remove all containers on the machine
	docker stop $$(docker ps -a -q)
	docker rm $$(docker ps -a -q)
