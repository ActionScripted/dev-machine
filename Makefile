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

dev-setup:
	@echo "Please install pre-commit:"
	@echo "https://pre-commit.com/#installation"
	pre-commit install
