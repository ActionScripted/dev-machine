# Recipe targets (that aren't files...all of them)
.PHONY : default dev development


# Recipes: Default (first is "default")
default: development


# Recipes: Aliases
dev: development


docs-build:
	echo "Sup"

docs-clean:
	echo "Sup"

docs-shell:
	@docker-compose -f docker-compose.yml run docs bash


##
# Development
#
dev-build:
	@docker-compose -f docker-compose.yml build --no-cache

dev-down:
	@docker-compose -f docker-compose.yml down

dev-setup:
	@echo "Please install pre-commit:"
	@echo "https://pre-commit.com/#installation"
	pre-commit install
