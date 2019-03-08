.PHONY: dist
build:
	mkdir lastpass-hide-error ; cp -r js/ lastpass-hide-error ; cp manifest.json lastpass-hide-error ;


.PHONY: copy-icons
copy-icons:
	cp *.jpg lastpass-hide-error

.PHONY: zip
zip:
	zip -r -X lastpass-hide-error.zip lastpass-hide-error

.PHONY: dist
dist: build copy-icons zip


.PHONY: all
all: dist

.PHONY: start-test
start-test:
	python3 -m http.server

.PHONY: clean
clean:
	rm -r lastpass-hide-error ; rm -r lastpass-hide-error.zip
