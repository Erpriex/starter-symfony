.PHONY: up down build logs sh exec composer install migrate cc test init \
        controller entity migration fixtures

ARG := $(word 2,$(MAKECMDGOALS))

%:
	@:

up:
	docker compose up -d --build

down:
	docker compose down

build:
	docker compose build

logs:
	docker compose logs -f

sh:
	docker compose exec php sh

exec:
	docker compose exec php $(filter-out $@,$(MAKECMDGOALS))

composer:
	docker compose exec php composer $(filter-out $@,$(MAKECMDGOALS))

install:
	docker compose exec php composer install

migrate:
	docker compose exec php php bin/console doctrine:migrations:migrate

cc:
	docker compose exec php php bin/console cache:clear

test:
	docker compose exec php php bin/phpunit

controller:
	docker compose exec php php bin/console make:controller $(ARG)

entity:
	docker compose exec php php bin/console make:entity $(ARG)

migration:
	docker compose exec php php bin/console make:migration

fixtures:
	docker compose exec php php bin/console doctrine:fixtures:load

init:
	docker compose run --rm php composer create-project symfony/skeleton .
	docker compose run --rm php composer require webapp
