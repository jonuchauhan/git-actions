.PHONY: lint sql-lint 

lint:
	black .
	flake8 .
	mypy .


sql-lint:
	sqlfluff lint sql/ --format github-annotation