.PHONY: start

start:
	cp -n .env.sample .env
	bash setup_vault_gha.sh rcw-compose.yml vault
	docker-compose -f monitoring.yml up -d mongodb
	docker-compose -f monitoring.yml up -d elasticsearch
	docker-compose -f monitoring.yml up -d graylog
	docker-compose -f rcw-compose.yml up -d
	wget https://github.com/AbhilashKD/test/blob/master/Downloads/metabase/clickhouse.metabase-driver.jar
	docker cp clickhouse.metabase-driver.jar metabase:/plugins/
	docker restart metabase
