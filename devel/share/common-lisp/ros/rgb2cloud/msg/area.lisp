; Auto-generated. Do not edit!


(cl:in-package rgb2cloud-msg)


;//! \htmlinclude area.msg.html

(cl:defclass <area> (roslisp-msg-protocol:ros-message)
  ((listPoints
    :reader listPoints
    :initarg :listPoints
    :type (cl:vector rgb2cloud-msg:point)
   :initform (cl:make-array 0 :element-type 'rgb2cloud-msg:point :initial-element (cl:make-instance 'rgb2cloud-msg:point))))
)

(cl:defclass area (<area>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <area>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'area)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgb2cloud-msg:<area> is deprecated: use rgb2cloud-msg:area instead.")))

(cl:ensure-generic-function 'listPoints-val :lambda-list '(m))
(cl:defmethod listPoints-val ((m <area>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-msg:listPoints-val is deprecated.  Use rgb2cloud-msg:listPoints instead.")
  (listPoints m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <area>) ostream)
  "Serializes a message object of type '<area>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'listPoints))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'listPoints))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <area>) istream)
  "Deserializes a message object of type '<area>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'listPoints) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'listPoints)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rgb2cloud-msg:point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<area>)))
  "Returns string type for a message object of type '<area>"
  "rgb2cloud/area")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'area)))
  "Returns string type for a message object of type 'area"
  "rgb2cloud/area")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<area>)))
  "Returns md5sum for a message object of type '<area>"
  "cb1b145f81271fff7c5c96220112fa96")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'area)))
  "Returns md5sum for a message object of type 'area"
  "cb1b145f81271fff7c5c96220112fa96")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<area>)))
  "Returns full string definition for message of type '<area>"
  (cl:format cl:nil "point[] listPoints~%~%================================================================================~%MSG: rgb2cloud/point~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'area)))
  "Returns full string definition for message of type 'area"
  (cl:format cl:nil "point[] listPoints~%~%================================================================================~%MSG: rgb2cloud/point~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <area>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'listPoints) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <area>))
  "Converts a ROS message object to a list"
  (cl:list 'area
    (cl:cons ':listPoints (listPoints msg))
))
