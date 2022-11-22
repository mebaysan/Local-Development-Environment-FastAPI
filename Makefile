dev-up:
	@docker compose -f dev.docker-compose.yml up -d

dev-down:
	@docker compose -f dev.docker-compose.yml down

dev-status:
	@docker compose -f dev.docker-compose.yml ps

dev-wl: # watch logs for a container
	@docker container logs -f dev_webapp