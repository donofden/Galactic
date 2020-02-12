# Makefile for Galatic
#
.DEFAULT_GOAL := explain
explain:
	### Welcome
	#
	### Targets
	#
	# "Please use `make <target>' where <target> is one of"
	#
	@cat Makefile* | grep -E '^[a-zA-Z_-]+:.*?## .*$$' | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

.PHONY: init
init: ## will install required packages
	pip install -r requirements.txt

.PHONY: start
start: ## will install required packages
	python3 main.py