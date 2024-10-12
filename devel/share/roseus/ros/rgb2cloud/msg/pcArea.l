;; Auto-generated. Do not edit!


(when (boundp 'rgb2cloud::pcArea)
  (if (not (find-package "RGB2CLOUD"))
    (make-package "RGB2CLOUD"))
  (shadow 'pcArea (find-package "RGB2CLOUD")))
(unless (find-package "RGB2CLOUD::PCAREA")
  (make-package "RGB2CLOUD::PCAREA"))

(in-package "ROS")
;;//! \htmlinclude pcArea.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass rgb2cloud::pcArea
  :super ros::object
  :slots (_listPcPoint ))

(defmethod rgb2cloud::pcArea
  (:init
   (&key
    ((:listPcPoint __listPcPoint) ())
    )
   (send-super :init)
   (setq _listPcPoint __listPcPoint)
   self)
  (:listPcPoint
   (&rest __listPcPoint)
   (if (keywordp (car __listPcPoint))
       (send* _listPcPoint __listPcPoint)
     (progn
       (if __listPcPoint (setq _listPcPoint (car __listPcPoint)))
       _listPcPoint)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Point32[] _listPcPoint
    (apply #'+ (send-all _listPcPoint :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Point32[] _listPcPoint
     (write-long (length _listPcPoint) s)
     (dolist (elem _listPcPoint)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Point32[] _listPcPoint
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _listPcPoint (let (r) (dotimes (i n) (push (instance geometry_msgs::Point32 :init) r)) r))
     (dolist (elem- _listPcPoint)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rgb2cloud::pcArea :md5sum-) "1910f595f1099a0b020344db77cf9645")
(setf (get rgb2cloud::pcArea :datatype-) "rgb2cloud/pcArea")
(setf (get rgb2cloud::pcArea :definition-)
      "geometry_msgs/Point32[] listPcPoint

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z
")



(provide :rgb2cloud/pcArea "1910f595f1099a0b020344db77cf9645")


