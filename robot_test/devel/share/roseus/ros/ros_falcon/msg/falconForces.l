;; Auto-generated. Do not edit!


(when (boundp 'ros_falcon::falconForces)
  (if (not (find-package "ROS_FALCON"))
    (make-package "ROS_FALCON"))
  (shadow 'falconForces (find-package "ROS_FALCON")))
(unless (find-package "ROS_FALCON::FALCONFORCES")
  (make-package "ROS_FALCON::FALCONFORCES"))

(in-package "ROS")
;;//! \htmlinclude falconForces.msg.html


(defclass ros_falcon::falconForces
  :super ros::object
  :slots (_X _Y _Z ))

(defmethod ros_falcon::falconForces
  (:init
   (&key
    ((:X __X) 0)
    ((:Y __Y) 0)
    ((:Z __Z) 0)
    )
   (send-super :init)
   (setq _X (round __X))
   (setq _Y (round __Y))
   (setq _Z (round __Z))
   self)
  (:X
   (&optional __X)
   (if __X (setq _X __X)) _X)
  (:Y
   (&optional __Y)
   (if __Y (setq _Y __Y)) _Y)
  (:Z
   (&optional __Z)
   (if __Z (setq _Z __Z)) _Z)
  (:serialization-length
   ()
   (+
    ;; int16 _X
    2
    ;; int16 _Y
    2
    ;; int16 _Z
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _X
       (write-word _X s)
     ;; int16 _Y
       (write-word _Y s)
     ;; int16 _Z
       (write-word _Z s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _X
     (setq _X (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Y
     (setq _Y (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; int16 _Z
     (setq _Z (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get ros_falcon::falconForces :md5sum-) "b4669138e2c3f68ffec8f31ed47c17a1")
(setf (get ros_falcon::falconForces :datatype-) "ros_falcon/falconForces")
(setf (get ros_falcon::falconForces :definition-)
      "int16 X
int16 Y
int16 Z

")



(provide :ros_falcon/falconForces "b4669138e2c3f68ffec8f31ed47c17a1")


