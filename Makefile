.DEFAULT_GOAL := help

.gitignore: util/gitignore/build.sh util/gitignore/src/*.gitignore
	./util/gitignore/build.sh .gitignore

.PHONY: gitignore
gitignore: .gitignore

.PHONY: help
help:
	@echo "Utility scripts for the hardware repo"
	@echo
	@echo "targets:"
	@echo "    gitignore: Build the .gitignore file"
