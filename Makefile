.PHONY: lint

lint:
	black .
	flake8 .
	mypy .
