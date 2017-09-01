version = 0.2

build:
                docker build -t "andrewcsoka/arm64-toolbox:$(version)" .
                docker tag andrewcsoka/arm64-toolbox:$(version) andrewcsoka/arm64-toolbox:latest

push:
                docker push andrewcsoka/toolbox:$(version)
                docker push andrewcsoka/toolbox:latest

.PHONY: build push
