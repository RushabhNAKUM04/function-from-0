install:
	pip install --upgrade pip &&\
	pip install -r requirements.txt

# Run tests using pytest with verbose output
test:
	python -m pytest -vv test_hello.py

# Format code using black
format:
	black *.py

# Lint code using pylint with specific disable flags
lint:
	pylint --disable=R,C hello.py

# Run all tasks: install dependencies, lint the code, and run tests
all: install lint test format 
