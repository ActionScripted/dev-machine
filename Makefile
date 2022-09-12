# Recipe targets (that aren't files...all of them)
.PHONY : help \
	default \
	docs-html \
	docs-clean \
	docs-shell \
	dev-build \
	dev-down \


# Recipes: Default (first is "default")
default: help


##
# Core
#
build:
	@docker-compose build --no-cache

help: ## show help
	@echo "Usage: make [recipe]\n\nRecipes:"
	@grep -h '##' $(MAKEFILE_LIST) | grep -v grep | sed -e 's/\(.*\):.*## \(.*\)/\1|    \2/' | tr '|' '\n'

down:
	@docker-compose down

setup:
	@echo "Please install pre-commit:"
	@echo "https://pre-commit.com/#installation"
	pre-commit install
	git submodule update --init --recursive


##
# Docs
#
docs-run := docker-compose run docs

docs-build:
	@$(docs-run) make html

docs-clean:
	@$(docs-run) make clean

docs-shell:
	@$(docs-run) bash
