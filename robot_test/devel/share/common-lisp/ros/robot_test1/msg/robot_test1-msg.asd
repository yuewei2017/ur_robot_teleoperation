
(cl:in-package :asdf)

(defsystem "robot_test1-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "force" :depends-on ("_package_force"))
    (:file "_package_force" :depends-on ("_package"))
    (:file "falconForces" :depends-on ("_package_falconForces"))
    (:file "_package_falconForces" :depends-on ("_package"))
    (:file "falconPos" :depends-on ("_package_falconPos"))
    (:file "_package_falconPos" :depends-on ("_package"))
  ))