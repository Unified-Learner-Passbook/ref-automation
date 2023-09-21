.PHONY: start

start:
	cp -n .env.sample .env
	bash setup_vault_gha.sh rcw-compose.yml vault
	docker-compose -f rcw-compose.yml up -d
	docker-compose -f monitoring.yml up -d mongodb
	docker-compose -f monitoring.yml up -d elasticsearch
	docker-compose -f monitoring.yml up -d graylog
	docker-compose up -d
