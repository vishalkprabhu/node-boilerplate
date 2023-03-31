APP_NAME=my-node-app

.PHONY: build
build:
    docker-compose build

.PHONY: start
start:
    docker-compose up -d

.PHONY: stop
stop:
    docker-compose down

.PHONY: restart
restart: stop start

.PHONY: logs
logs:
    docker-compose logs -f app

.PHONY: clean
clean:
    docker-compose rm -fsv
