;; TODO: configurable quicklisp path
;; OR: download/install ql if not present

(require 'asdf)
(require 'uiop)

(setf (uiop:getenv "DEPLOY_DEBUG_BOOT") "debug")

(let ((quicklisp-init (merge-pathnames "quicklisp/setup.lisp" (user-homedir-pathname))))
  (if (probe-file quicklisp-init) 
      (load quicklisp-init) 
      (progn
        (format *error-output* "Please install Quicklisp before cl-repl <https://www.quicklisp.org/beta/>")
        (uiop:quit 1))))

(ql:quickload '(uiop       
                unix-opts
                conium
                cl-ppcre
                cl-readline
                deploy)
              :silent t)

(setf deploy:*compression-factor* nil)
