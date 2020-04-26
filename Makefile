build:
	docker network create spanner
	docker-compose build
run:
	docker-compose up -d
cli:
	docker-compose run spanner-cli ./wrap
stop:
	docker-compose down
clean:
	docker rmi $$(docker images -f "dangling=true" -q) || echo "No dangling images!"
