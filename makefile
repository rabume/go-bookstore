SHELL := bash

help:
	@echo Help

.DEFAULT_GOAL := help

.PHONY: build

build:
	@docker-compose up -d --build

rebuild:
	@docker-compose down -v
	@docker-compose up -d --build

clear:
	@docker-compose down -v