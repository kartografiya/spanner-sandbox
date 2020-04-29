build:
	docker network inspect spanner >/dev/null 2>&1 || docker network create spanner
	docker-compose build
run:
	docker-compose up -d
cli:
	docker-compose run spanner-cli ./wrap
stop:
	docker-compose down
