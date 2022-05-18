VERSION=0.2.0

build:
	docker build \
		--tag guildencrantz/graphviz2drawio:${VERSION} \
		--build-arg VERSION=${VERSION} \
		.

latest: build
	docker tag guildencrantz/graphviz2drawio:${VERSION} guildencrantz/graphviz2drawio:latest

push: latest
	docker push guildencrantz/graphviz2drawio:latest
