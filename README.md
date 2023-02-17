# cl-repl
[![license](http://img.shields.io/badge/license-gplv3-blue.svg?style=flat)](https://github.com/iamrasputin/cl-repl/blob/master/license)
[![github tag](https://img.shields.io/github/tag/iamrasputin/cl-repl.svg?style=flat)](https://github.com//cl-repl/releases)
[![quicklisp dist](http://quickdocs.org/badge/cl-repl.svg)](http://quickdocs.org/cl-repl/)

## Note

Much like the repository from which this one is forked, `cl-repl` is a work-in-progress.  Unexpected bugs,
missing features, and [nasal demons](http://catb.org/jargon/html/N/nasal-demons.html) are to be expected.  Please report any you find as an issue, and I'll do
my best to provide support.

# Overview
`cl-repl` aims to provide a beginner-friendly REPL for Common Lisp with batteries included, like `ipython` for python.

While SBCL is a powerful implementation of Common Lisp, with its own neat features and provided programming environment,
its top-level REPL leaves much to be desired.  `cl-repl` is thus a feature-stuffed wrapper around SBCL, with (some of)
the following features:

- [x] powerful line editting with GNU readline.
- [x] tab-completion of symbols.
- [x] simple installation instruction.
- [x] code editting with text editor.
- [ ] useful debugger & inspector
- [x] syntax highlighting of input texts.
- [ ] implementation independence. (only sbcl supported)

# See it in action:

## Syntax hilighting!
![cl-repl syntax](images/syntax-highlight.png)

## Auto-Completion!
![cl-repl Auto-Completion](images/completion.png)

# Installation
```
$ make
```
`make` will deploy an executable _as well as_ any required libraries to the `bin` folder at the root of the project.

before installation, please ensure that GNU readline is installed.  

If you run MacOS, you may need to execute following command:

```
$ brew link --force readline
```

Also, *ensure that your terminal support 256 colors*.


# Usage
```
$　./bin/cl-repl 
```

Some useful "magic" commands are ready to use out of the box. To see a list of available commands:

```
repl-user> %help
```

## Configuration
You can customize cl-repl by editing `~/.replrc`. you can change appearance, add your own commands, and do anything you want when startup; the file can
contain any legal Common Lisp code, which will be evaluated when you start your REPL.

An example can be found [here](./replrc-example).

## Execute shell command
If the line starts with `!`, `cl-repl` will excute it as shell command, e.g. `!ls -a`.

## %edit magic

REPLs are cool, but sometimes you need a text editor.  Luckily, `cl-repl` ships with a magic command
to open one:
```
repl-user> %edit <filename>
```

This will cause `cl-repl` to invoke the editor specified by `$EDITOR` at your shell.  
After editing code save it and close your editor; `cl-repl` will automatically evaluate it.  

If a `<filename>` argument is not supplied, a temporary file will be created and deleted after evaluation.  

The following editors are known to work properly:

- vi/vim/neovim
- GNU emacs
- Joe's Own Editor
- lem

# Contributing
I probably can't write this all myself; if you have a cool idea for a feature, or see a bug
you want fixed, please open a pull request!

# Author
[Tani Kojiro](https://github.com/koji-kojiro) (kojiro0531@gmail.com) is the author of the original repository, which hasn't had a new commit
since 2020.

I (IAmRasputin) have taken this up to maintain, as I feel it's useful, but it's probably a stretch to call me an author.


# License
`cl-repl` is distributed under the [3rd Revision of the GNU General Public License](./LICENSE).





