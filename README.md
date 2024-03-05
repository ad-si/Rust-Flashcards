# Rust Flashcards

Over 500 flashcards to learn [Rust] from first principles.

<img alt="Screenshot of Anki showing a Rust flashcard" src="./images/2024-03-05t2132_screenshot.png" width="50%">

<br>

The cards are written in markdown and based on the official [Rust Book].

Check out the [makefile](./makefile) for scripts
to convert them to an [Anki] deck or PDF file.

Credit to [u/WebDev193](https://www.reddit.com/user/WebDev193/) for doing the
[initial grunt work](https://ankiweb.net/shared/info/2045782265).


## Development

Run `nix develop` to enter the development environment
with [Anki Panky] and [Pandoc] installed.

Then run `make cards.apkg` to generate the Anki deck
or `make cards.pdf` to generate the PDF file.


[Anki Panky]: https://github.com/kamalsacranie/anki-panky
[Anki]: https://apps.ankiweb.net
[Pandoc]: https://pandoc.org
[Rust Book]: https://doc.rust-lang.org/book/
[Rust]: https://www.rust-lang.org
