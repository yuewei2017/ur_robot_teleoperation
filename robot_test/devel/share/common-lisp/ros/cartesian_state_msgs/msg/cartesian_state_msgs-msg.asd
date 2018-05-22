
(cl:in-package :asdf)

(defsystem "cartesian_state_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "PoseTwist" :depends-on ("_package_PoseTwist"))
    (:file "_package_PoseTwist" :depends-on ("_package"))
  ))