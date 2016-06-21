NS = atomiq
REPO = node
VER ?= latest

IMAGE = $(NS)/$(REPO):$(VER)

.PHONY: build node onbuild

all: node onbuild

node:
	cd 6.2 && docker build -t $(IMAGE) .

onbuild:
	cd 6.2/onbuild && docker build --no-cache -t "$(IMAGE)-onbuild" .
