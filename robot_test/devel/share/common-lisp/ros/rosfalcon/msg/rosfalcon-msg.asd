
(cl:in-package :asdf)

(defsystem "rosfalcon-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "falconPos" :depends-on ("_package_falconPos"))
    (:file "_package_falconPos" :depends-on ("_package"))
  ))