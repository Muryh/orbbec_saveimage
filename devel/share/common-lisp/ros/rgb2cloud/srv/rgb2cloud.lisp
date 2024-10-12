; Auto-generated. Do not edit!


(cl:in-package rgb2cloud-srv)


;//! \htmlinclude rgb2cloud-request.msg.html

(cl:defclass <rgb2cloud-request> (roslisp-msg-protocol:ros-message)
  ((rgbBaseFileName
    :reader rgbBaseFileName
    :initarg :rgbBaseFileName
    :type cl:string
    :initform "")
   (areaNum
    :reader areaNum
    :initarg :areaNum
    :type cl:integer
    :initform 0)
   (listAreas
    :reader listAreas
    :initarg :listAreas
    :type (cl:vector rgb2cloud-msg:area)
   :initform (cl:make-array 0 :element-type 'rgb2cloud-msg:area :initial-element (cl:make-instance 'rgb2cloud-msg:area))))
)

(cl:defclass rgb2cloud-request (<rgb2cloud-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rgb2cloud-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rgb2cloud-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgb2cloud-srv:<rgb2cloud-request> is deprecated: use rgb2cloud-srv:rgb2cloud-request instead.")))

(cl:ensure-generic-function 'rgbBaseFileName-val :lambda-list '(m))
(cl:defmethod rgbBaseFileName-val ((m <rgb2cloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-srv:rgbBaseFileName-val is deprecated.  Use rgb2cloud-srv:rgbBaseFileName instead.")
  (rgbBaseFileName m))

(cl:ensure-generic-function 'areaNum-val :lambda-list '(m))
(cl:defmethod areaNum-val ((m <rgb2cloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-srv:areaNum-val is deprecated.  Use rgb2cloud-srv:areaNum instead.")
  (areaNum m))

(cl:ensure-generic-function 'listAreas-val :lambda-list '(m))
(cl:defmethod listAreas-val ((m <rgb2cloud-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-srv:listAreas-val is deprecated.  Use rgb2cloud-srv:listAreas instead.")
  (listAreas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rgb2cloud-request>) ostream)
  "Serializes a message object of type '<rgb2cloud-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'rgbBaseFileName))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'rgbBaseFileName))
  (cl:let* ((signed (cl:slot-value msg 'areaNum)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 18446744073709551616) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'listAreas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'listAreas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rgb2cloud-request>) istream)
  "Deserializes a message object of type '<rgb2cloud-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'rgbBaseFileName) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'rgbBaseFileName) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'areaNum) (cl:if (cl:< unsigned 9223372036854775808) unsigned (cl:- unsigned 18446744073709551616))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'listAreas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'listAreas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rgb2cloud-msg:area))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rgb2cloud-request>)))
  "Returns string type for a service object of type '<rgb2cloud-request>"
  "rgb2cloud/rgb2cloudRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2cloud-request)))
  "Returns string type for a service object of type 'rgb2cloud-request"
  "rgb2cloud/rgb2cloudRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rgb2cloud-request>)))
  "Returns md5sum for a message object of type '<rgb2cloud-request>"
  "cbe6659d39342a7a2160bf2d36c45404")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rgb2cloud-request)))
  "Returns md5sum for a message object of type 'rgb2cloud-request"
  "cbe6659d39342a7a2160bf2d36c45404")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rgb2cloud-request>)))
  "Returns full string definition for message of type '<rgb2cloud-request>"
  (cl:format cl:nil "string rgbBaseFileName~%int64 areaNum~%area[] listAreas~%~%================================================================================~%MSG: rgb2cloud/area~%point[] listPoints~%~%================================================================================~%MSG: rgb2cloud/point~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rgb2cloud-request)))
  "Returns full string definition for message of type 'rgb2cloud-request"
  (cl:format cl:nil "string rgbBaseFileName~%int64 areaNum~%area[] listAreas~%~%================================================================================~%MSG: rgb2cloud/area~%point[] listPoints~%~%================================================================================~%MSG: rgb2cloud/point~%int32 x~%int32 y~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rgb2cloud-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'rgbBaseFileName))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'listAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rgb2cloud-request>))
  "Converts a ROS message object to a list"
  (cl:list 'rgb2cloud-request
    (cl:cons ':rgbBaseFileName (rgbBaseFileName msg))
    (cl:cons ':areaNum (areaNum msg))
    (cl:cons ':listAreas (listAreas msg))
))
;//! \htmlinclude rgb2cloud-response.msg.html

(cl:defclass <rgb2cloud-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (listPcAreas
    :reader listPcAreas
    :initarg :listPcAreas
    :type (cl:vector rgb2cloud-msg:pcArea)
   :initform (cl:make-array 0 :element-type 'rgb2cloud-msg:pcArea :initial-element (cl:make-instance 'rgb2cloud-msg:pcArea))))
)

(cl:defclass rgb2cloud-response (<rgb2cloud-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <rgb2cloud-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'rgb2cloud-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name rgb2cloud-srv:<rgb2cloud-response> is deprecated: use rgb2cloud-srv:rgb2cloud-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <rgb2cloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-srv:ok-val is deprecated.  Use rgb2cloud-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'listPcAreas-val :lambda-list '(m))
(cl:defmethod listPcAreas-val ((m <rgb2cloud-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader rgb2cloud-srv:listPcAreas-val is deprecated.  Use rgb2cloud-srv:listPcAreas instead.")
  (listPcAreas m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <rgb2cloud-response>) ostream)
  "Serializes a message object of type '<rgb2cloud-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'listPcAreas))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'listPcAreas))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <rgb2cloud-response>) istream)
  "Deserializes a message object of type '<rgb2cloud-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'listPcAreas) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'listPcAreas)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'rgb2cloud-msg:pcArea))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<rgb2cloud-response>)))
  "Returns string type for a service object of type '<rgb2cloud-response>"
  "rgb2cloud/rgb2cloudResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2cloud-response)))
  "Returns string type for a service object of type 'rgb2cloud-response"
  "rgb2cloud/rgb2cloudResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<rgb2cloud-response>)))
  "Returns md5sum for a message object of type '<rgb2cloud-response>"
  "cbe6659d39342a7a2160bf2d36c45404")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'rgb2cloud-response)))
  "Returns md5sum for a message object of type 'rgb2cloud-response"
  "cbe6659d39342a7a2160bf2d36c45404")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<rgb2cloud-response>)))
  "Returns full string definition for message of type '<rgb2cloud-response>"
  (cl:format cl:nil "bool ok~%pcArea[] listPcAreas~%~%~%================================================================================~%MSG: rgb2cloud/pcArea~%geometry_msgs/Point32[] listPcPoint~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'rgb2cloud-response)))
  "Returns full string definition for message of type 'rgb2cloud-response"
  (cl:format cl:nil "bool ok~%pcArea[] listPcAreas~%~%~%================================================================================~%MSG: rgb2cloud/pcArea~%geometry_msgs/Point32[] listPcPoint~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <rgb2cloud-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'listPcAreas) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <rgb2cloud-response>))
  "Converts a ROS message object to a list"
  (cl:list 'rgb2cloud-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':listPcAreas (listPcAreas msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'rgb2cloud)))
  'rgb2cloud-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'rgb2cloud)))
  'rgb2cloud-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'rgb2cloud)))
  "Returns string type for a service object of type '<rgb2cloud>"
  "rgb2cloud/rgb2cloud")