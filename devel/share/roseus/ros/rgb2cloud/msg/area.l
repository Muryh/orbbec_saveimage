;; Auto-generated. Do not edit!


(when (boundp 'rgb2cloud::area)
  (if (not (find-package "RGB2CLOUD"))
    (make-package "RGB2CLOUD"))
  (shadow 'area (find-package "RGB2CLOUD")))
(unless (find-package "RGB2CLOUD::AREA")
  (make-package "RGB2CLOUD::AREA"))

(in-package "ROS")
;;//! \htmlinclude area.msg.html


(defclass rgb2cloud::area
  :super ros::object
  :slots (_listPoints ))

(defmethod rgb2cloud::area
  (:init
   (&key
    ((:listPoints __listPoints) ())
    )
   (send-super :init)
   (setq _listPoints __listPoints)
   self)
  (:listPoints
   (&rest __listPoints)
   (if (keywordp (car __listPoints))
       (send* _listPoints __listPoints)
     (progn
       (if __listPoints (setq _listPoints (car __listPoints)))
       _listPoints)))
  (:serialization-length
   ()
   (+
    ;; rgb2cloud/point[] _listPoints
    (apply #'+ (send-all _listPoints :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; rgb2cloud/point[] _listPoints
     (write-long (length _listPoints) s)
     (dolist (elem _listPoints)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; rgb2cloud/point[] _listPoints
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _listPoints (let (r) (dotimes (i n) (push (instance rgb2cloud::point :init) r)) r))
     (dolist (elem- _listPoints)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get rgb2cloud::area :md5sum-) "cb1b145f81271fff7c5c96220112fa96")
(setf (get rgb2cloud::area :datatype-) "rgb2cloud/area")
(setf (get rgb2cloud::area :definition-)
      "point[] listPoints

================================================================================
MSG: rgb2cloud/point
int32 x
int32 y

")



(provide :rgb2cloud/area "cb1b145f81271fff7c5c96220112fa96")


