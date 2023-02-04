(asdf:defsystem "cl-repl"
  :version "0.7.0"
  :author "TANI Kojiro"
  :maintainer "IAmRasputin <ryanmgannon@gmail.com>"
  :license "GPLv3"
  :depends-on (:uiop
               :unix-opts
               :conium
               :cl-ppcre
               :cl-readline)
  :serial t
  :build-operation "program-op"
  :build-pathname "cl-repl"
  :entry-point "cl-repl:main"
  :components ((:module "src" :components ((:file "package")
                                           (:file "util")
                                           (:file "color")
                                           (:file "color-scheme")
                                           (:file "highlight")
                                           (:file "keymap")
                                           (:file "pager")
                                           (:file "command")
                                           (:file "shell")
                                           (:file "completer")
                                           (:file "debugger")
                                           (:file "inspector")
                                           (:file "input")
                                           (:file "repl")
                                           (:file "main"))))
  :description "A full-featured repl implementation."
  :long-description "A full-featured repl implementation.")
