setup:
	python3 -m venv venv &&\
    . venv/bin/activate
install:
	pip install --upgrade pip &&\
		pip install -r requirements.txt

lint:
	hadolintw Dockerfile
build:
	python build.py

setup-and-lint: setup install lint
setup-and-build: setup install build
all: setup install lint build
