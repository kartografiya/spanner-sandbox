build:
	docker network create spanner
	docker-compose build
run:
	docker-compose up -d
stop:
	docker-compose down
clean:
	docker rmi $(docker images -f "dangling=true" -q) || echo "No dangling images!"
