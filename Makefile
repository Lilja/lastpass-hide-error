.PHONY: dist
build:
	mkdir lastpass-hide-error ; cp -r js/ lastpass-hide-error ; cp manifest.json lastpass-hide-error ; 

.PHONY: zip
zip:
	zip -r -X lastpass-hide-error.zip lastpass-hide-error

.PHONY: dist
dist: build zip


all: dist


clean:
	rm -r lastpass-hide-error ; rm -r lastpass-hide-error.zip
