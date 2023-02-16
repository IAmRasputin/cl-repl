LISP ?= sbcl
ASD := ./cl-repl.asd

all: clean build

clean:
	rm -f bin/*

build:
	mkdir -p bin
	$(LISP) \
		--noinform \
		--no-userinit \
		--load init.lisp \
		--eval '(asdf:load-asd "$(ASD)")' \
		--eval '(asdf:load-system "cl-repl")' \
		--eval '(asdf:make :cl-repl)'
