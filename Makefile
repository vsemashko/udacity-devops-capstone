setup:
	python3 -m venv venv &&\
    . venv/bin/activate

lint:
	hadolint Dockerfile

all: setup lint
