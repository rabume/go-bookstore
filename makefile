SHELL := bash

.DEFAULT_GOAL := build

.PHONY: build rebuild clear

build:
	@docker-compose up -d --build

rebuild:
	@docker-compose down -v
	@docker-compose up -d --build

clear:
	@docker-compose down -v
