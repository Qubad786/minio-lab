up-old:
	docker-compose -f ./docker-compose.old.yaml up --build

up-new:
	docker-compose -f ./docker-compose.new.yaml up --build

stop:
	@docker-compose -f ./docker-compose.old.yaml stop
	@docker-compose -f ./docker-compose.new.yaml stop

switch2new:
	@docker-compose -f ./docker-compose.old.yaml stop
	@docker-compose -f ./docker-compose.new.yaml up --build

switch2old:
	@docker-compose -f ./docker-compose.new.yaml stop
	@docker-compose -f ./docker-compose.old.yaml up --build
