
.PHONY: build
build:
	docker build --pull -t knaou/my-code-server .

.PHONY: test
test:
	docker-compose -f docker-compose.test.yml build --pull
	docker-compose -f docker-compose.test.yml run sut
	docker-compose -f docker-compose.test.yml down

.PHONY: push
push: build
	docker push knaou/my-code-server

.PHONY: all
all: test build push


