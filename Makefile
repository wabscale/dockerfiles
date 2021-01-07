.PHONY: build


DC_FILES := $(shell find -name 'docker-compose.yml')
DC_FILES_TO_PUSH := $(shell grep -l 'image: d.bigj.dev' `find -name docker-compose.yml` | sort | uniq)
IMAGES := $(shell grep 'image: d.bigj.dev' $(DC_FILES) | awk '{print $$3}')
EXECUTABLES := $(shell find -executable -type f | awk '{if (!index($$0, ".sh") && !index($$0, ".git")) {print $$0}}')


all: build push


login:
	@docker login d.bigj.dev -u root --password="${CI_TOKEN}"


build:
	for dcfile in $(DC_FILES); do \
		docker-compose -f $$dcfile build --parallel; \
	done


push: login
	for dcfile in $(DC_FILES_TO_PUSH); do \
		docker-compose -f $$dcfile push; \
	done


install:
	for e in $(EXECUTABLES); do \
		if [ "$$(basename $$(dirname $$e))" = "$$(basename $$e)" ]; then \
			ln -s -f `realpath $$e` /usr/local/bin/; \
		fi; \
	done

clean:
	docker rmi $(IMAGES)
	docker system prune -f
