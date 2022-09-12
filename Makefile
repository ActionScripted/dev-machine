# Recipe targets (that aren't files...all of them)
.PHONY : help \
	build \
	default \
	docs-clean \
	docs-html \
	docs-shell \
	down \
	scripts-test \
	setup \


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

setup: submodules
	pre-commit install

submodules:
	@git submodule update --init --recursive

test: scripts-test-unit


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


##
# Scripts
#
scripts-run-mac:
	@./scripts/mac/run.sh

scripts-test-unit: submodules
	@# TODO: run in a container?
	@DM_PATH_SHUNIT="./scripts/shunit2/shunit2" ./scripts/mac/tests/unit.sh
