;; Auto-generated. Do not edit!


(when (boundp 'robot_test1::falconPos)
  (if (not (find-package "ROBOT_TEST1"))
    (make-package "ROBOT_TEST1"))
  (shadow 'falconPos (find-package "ROBOT_TEST1")))
(unless (find-package "ROBOT_TEST1::FALCONPOS")
  (make-package "ROBOT_TEST1::FALCONPOS"))

(in-package "ROS")
;;//! \htmlinclude falconPos.msg.html


(defclass robot_test1::falconPos
  :super ros::object
  :slots (_X _Y _Z ))

(defmethod robot_test1::falconPos
  (:init
   (&key
    ((:X __X) 0.0)
    ((:Y __Y) 0.0)
    ((:Z __Z) 0.0)
    )
   (send-super :init)
   (setq _X (float __X))
   (setq _Y (float __Y))
   (setq _Z (float __Z))
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
    ;; float64 _X
    8
    ;; float64 _Y
    8
    ;; float64 _Z
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _X
       (sys::poke _X (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Y
       (sys::poke _Y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _Z
       (sys::poke _Z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _X
     (setq _X (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Y
     (setq _Y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _Z
     (setq _Z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get robot_test1::falconPos :md5sum-) "8219583d7802cc50be3e9ab911877ba5")
(setf (get robot_test1::falconPos :datatype-) "robot_test1/falconPos")
(setf (get robot_test1::falconPos :definition-)
      "float64 X
float64 Y
float64 Z

")



(provide :robot_test1/falconPos "8219583d7802cc50be3e9ab911877ba5")


