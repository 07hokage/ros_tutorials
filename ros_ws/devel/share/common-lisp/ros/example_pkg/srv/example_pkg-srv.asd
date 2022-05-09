
(cl:in-package :asdf)

(defsystem "example_pkg-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "divideTwoInt" :depends-on ("_package_divideTwoInt"))
    (:file "_package_divideTwoInt" :depends-on ("_package"))
  ))