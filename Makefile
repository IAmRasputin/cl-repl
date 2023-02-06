LISP ?= sbcl
ASD := ./cl-repl.asd

all: clean build

clean:
	rm -f cl-repl

build:
	mkdir -p bin
	$(LISP) \
		--noinform \
		--no-userinit \
		--eval '(require "asdf")' \
		--load load-quicklisp.lisp \
		--eval '(asdf:load-asd "$(ASD)")' \
		--eval '(asdf:load-system "cl-repl")' \
		--eval '(asdf:make :cl-repl)'
