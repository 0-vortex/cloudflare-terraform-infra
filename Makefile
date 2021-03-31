SHELL := bash
.ONESHELL:
.SHELLFLAGS := -eu -o pipefail -c
.DELETE_ON_ERROR:
MAKEFLAGS += --warn-undefined-variables
MAKEFLAGS += --no-builtin-rules
.DEFAULT_GOAL := help

ifeq ($(origin .RECIPEPREFIX), undefined)
  $(error This Make does not support .RECIPEPREFIX. Please use GNU Make 3.82 or later)
endif
.RECIPEPREFIX = >

init: ## runs terraform init
> terraform init
.PHONY: init

plan: ## runs terraform plan
> terraform plan
.PHONY: plan

apply: ## runs terraform apply
> terraform apply -auto-approve
.PHONY: apply

validate: ## runs terraform validate
> terraform validate
.PHONY: validate

format: ## runs terraform fmt
> terraform fmt -diff=true
.PHONY: format

destroy: ## runs terraform destroy
> terraform destroy
.PHONY: destroy

clean: ## cleans up any terraform temporary files
> rm -rf .terraform
> rm -rf terraform.tfstate*
> rm -f terra.plan
.PHONY: clean

help:
> @grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'
