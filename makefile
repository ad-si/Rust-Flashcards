.PHONY: help
help: makefile
	@tail -n +4 makefile | grep ".PHONY"


cards.apkg: cards.md
	anki-panky $<


cards.pdf: cards.md
	pandoc \
		--pdf-engine xelatex \
		--variable "monofont:Source Code Pro" \
		--to beamer \
		--output $@ \
		$<


.PHONY: build
build: cards.apkg


.PHONY: test
test: cards.apkg
	unzip cards.apkg -d cards-test
	ls -l cards-test


.PHONY: clean
clean:
	rm -f cards.apkg cards.pdf
	rm -rf cards-test
