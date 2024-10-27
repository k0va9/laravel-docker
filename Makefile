linux-env:
	echo "UID=$$(id -u)" >> .env
	echo "GID=$$(id -g)" >> .env

up:
	docker compose up -d

stop:
	docker compose down
