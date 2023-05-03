registery = 031780582162.dkr.ecr.us-east-1.amazonaws.com
repo = anytime-service
tag ?= $$(git rev-parse HEAD)
platform ?= linux/amd64

pull:
	docker pull $(registery)/$(repo)

build:
	docker build --platform $(platform) -t $(registery)/$(repo):$(tag) . --target prod

build-test:
	docker build -t $(registery)/$(repo):$(tag)-test . --target test

push:
	docker push $(registery)/$(repo):$(tag)

test:
	docker run -it -e OPENAI_ORGANIZATION=$${OPENAI_ORGANIZATION} -e OPENAI_API_KEY=$${OPENAI_API_KEY} $(registery)/$(repo):$(tag)-test pytest
