# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z0-9_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# VAGRANT TASKS
start: ## Start up the k8s cluster
	vagrant up

destroy: ## Stop and delete the k8s cluster
	vagrant destroy

ssh-master: ## SSH into the master
	vagrant ssh k8s-master

ssh-node1: ## SSH into the app node 1
	vagrant ssh node-1

ssh-node2: ## SSH into the app node 2
	vagrant ssh node-2

