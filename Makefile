.PHONY: install lint format test check check-refs

install:
	python -m pip install -r requirements-dev.txt -r requirements.txt
	python -m pip install -e .

lint:
	python -m ruff check .
	python -m ruff format --check .

format:
	python -m ruff format .
	python -m ruff check --fix .

test:
	python -m pytest

check: lint test check-refs

check-refs:
	bash scripts/check_references.sh
