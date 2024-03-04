.PHONY: help
help: makefile
	@tail -n +4 makefile | grep ".PHONY"


cards.apkg: cards.md
	ulimit -n 512 \
	&& anki-panky $<


cards.pdf: cards.md
	pandoc \
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
