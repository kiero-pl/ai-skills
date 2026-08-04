.PHONY: format format-check

format:
	npx prettier --write . --ignore-path .prettierignore

format-check:
	npx prettier --check . --ignore-path .prettierignore
