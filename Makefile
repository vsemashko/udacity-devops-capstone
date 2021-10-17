setup:
	python3 -m venv venv &&\
    . venv/bin/activate
lint:
	hadolint Dockerfile
build:
	python build.py


all: setup lint build
