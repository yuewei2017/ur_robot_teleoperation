; Auto-generated. Do not edit!


(cl:in-package robot_test1-msg)


;//! \htmlinclude force.msg.html

(cl:defclass <force> (roslisp-msg-protocol:ros-message)
  ((X
    :reader X
    :initarg :X
    :type cl:fixnum
    :initform 0)
   (Y
    :reader Y
    :initarg :Y
    :type cl:fixnum
    :initform 0)
   (Z
    :reader Z
    :initarg :Z
    :type cl:fixnum
    :initform 0))
)

(cl:defclass force (<force>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <force>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'force)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name robot_test1-msg:<force> is deprecated: use robot_test1-msg:force instead.")))

(cl:ensure-generic-function 'X-val :lambda-list '(m))
(cl:defmethod X-val ((m <force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_test1-msg:X-val is deprecated.  Use robot_test1-msg:X instead.")
  (X m))

(cl:ensure-generic-function 'Y-val :lambda-list '(m))
(cl:defmethod Y-val ((m <force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_test1-msg:Y-val is deprecated.  Use robot_test1-msg:Y instead.")
  (Y m))

(cl:ensure-generic-function 'Z-val :lambda-list '(m))
(cl:defmethod Z-val ((m <force>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader robot_test1-msg:Z-val is deprecated.  Use robot_test1-msg:Z instead.")
  (Z m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <force>) ostream)
  "Serializes a message object of type '<force>"
  (cl:let* ((signed (cl:slot-value msg 'X)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Y)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'Z)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <force>) istream)
  "Deserializes a message object of type '<force>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'X) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Y) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'Z) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<force>)))
  "Returns string type for a message object of type '<force>"
  "robot_test1/force")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'force)))
  "Returns string type for a message object of type 'force"
  "robot_test1/force")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<force>)))
  "Returns md5sum for a message object of type '<force>"
  "b4669138e2c3f68ffec8f31ed47c17a1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'force)))
  "Returns md5sum for a message object of type 'force"
  "b4669138e2c3f68ffec8f31ed47c17a1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<force>)))
  "Returns full string definition for message of type '<force>"
  (cl:format cl:nil "int16 X~%int16 Y~%int16 Z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'force)))
  "Returns full string definition for message of type 'force"
  (cl:format cl:nil "int16 X~%int16 Y~%int16 Z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <force>))
  (cl:+ 0
     2
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <force>))
  "Converts a ROS message object to a list"
  (cl:list 'force
    (cl:cons ':X (X msg))
    (cl:cons ':Y (Y msg))
    (cl:cons ':Z (Z msg))
))
