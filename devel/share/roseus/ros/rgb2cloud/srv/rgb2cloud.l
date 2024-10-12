;; Auto-generated. Do not edit!


(when (boundp 'rgb2cloud::rgb2cloud)
  (if (not (find-package "RGB2CLOUD"))
    (make-package "RGB2CLOUD"))
  (shadow 'rgb2cloud (find-package "RGB2CLOUD")))
(unless (find-package "RGB2CLOUD::RGB2CLOUD")
  (make-package "RGB2CLOUD::RGB2CLOUD"))
(unless (find-package "RGB2CLOUD::RGB2CLOUDREQUEST")
  (make-package "RGB2CLOUD::RGB2CLOUDREQUEST"))
(unless (find-package "RGB2CLOUD::RGB2CLOUDRESPONSE")
  (make-package "RGB2CLOUD::RGB2CLOUDRESPONSE"))

(in-package "ROS")





(defclass rgb2cloud::rgb2cloudRequest
  :super ros::object
  :slots (_rgbBaseFileName _areaNum _listAreas ))

(defmethod rgb2cloud::rgb2cloudRequest
  (:init
   (&key
    ((:rgbBaseFileName __rgbBaseFileName) "")
    ((:areaNum __areaNum) 0)
    ((:listAreas __listAreas) ())
    )
   (send-super :init)
   (setq _rgbBaseFileName (string __rgbBaseFileName))
   (setq _areaNum (round __areaNum))
   (setq _listAreas __listAreas)
   self)
  (:rgbBaseFileName
   (&optional __rgbBaseFileName)
   (if __rgbBaseFileName (setq _rgbBaseFileName __rgbBaseFileName)) _rgbBaseFileName)
  (:areaNum
   (&optional __areaNum)
   (if __areaNum (setq _areaNum __areaNum)) _areaNum)
  (:listAreas
   (&rest __listAreas)
   (if (keywordp (car __listAreas))
       (send* _listAreas __listAreas)
     (progn
       (if __listAreas (setq _listAreas (car __listAreas)))
       _listAreas)))
  (:serialization-length
   ()
   (+
    ;; string _rgbBaseFileName
    4 (length _rgbBaseFileName)
    ;; int64 _areaNum
    8
    ;; rgb2cloud/area[] _listAreas
    (apply #'+ (send-all _listAreas :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _rgbBaseFileName
       (write-long (length _rgbBaseFileName) s) (princ _rgbBaseFileName s)
     ;; int64 _areaNum
#+(or :alpha :irix6 :x86_64)
       (progn (sys::poke _areaNum (send s :buffer) (send s :count) :long) (incf (stream-count s) 8))
#-(or :alpha :irix6 :x86_64)
       (cond ((and (class _areaNum) (= (length (_areaNum . bv)) 2)) ;; bignum
              (write-long (ash (elt (_areaNum . bv) 0) 0) s)
              (write-long (ash (elt (_areaNum . bv) 1) -1) s))
             ((and (class _areaNum) (= (length (_areaNum . bv)) 1)) ;; big1
              (write-long (elt (_areaNum . bv) 0) s)
              (write-long (if (>= _areaNum 0) 0 #xffffffff) s))
             (t                                         ;; integer
              (write-long _areaNum s)(write-long (if (>= _areaNum 0) 0 #xffffffff) s)))
     ;; rgb2cloud/area[] _listAreas
     (write-long (length _listAreas) s)
     (dolist (elem _listAreas)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _rgbBaseFileName
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _rgbBaseFileName (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int64 _areaNum
#+(or :alpha :irix6 :x86_64)
      (setf _areaNum (prog1 (sys::peek buf ptr- :long) (incf ptr- 8)))
#-(or :alpha :irix6 :x86_64)
      (setf _areaNum (let ((b0 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4)))
                  (b1 (prog1 (sys::peek buf ptr- :integer) (incf ptr- 4))))
              (cond ((= b1 -1) b0)
                     ((and (= b1  0)
                           (<= lisp::most-negative-fixnum b0 lisp::most-positive-fixnum))
                      b0)
                    ((= b1  0) (make-instance bignum :size 1 :bv (integer-vector b0)))
                    (t (make-instance bignum :size 2 :bv (integer-vector b0 (ash b1 1)))))))
   ;; rgb2cloud/area[] _listAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _listAreas (let (r) (dotimes (i n) (push (instance rgb2cloud::area :init) r)) r))
     (dolist (elem- _listAreas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rgb2cloud::rgb2cloudResponse
  :super ros::object
  :slots (_ok _listPcAreas ))

(defmethod rgb2cloud::rgb2cloudResponse
  (:init
   (&key
    ((:ok __ok) nil)
    ((:listPcAreas __listPcAreas) ())
    )
   (send-super :init)
   (setq _ok __ok)
   (setq _listPcAreas __listPcAreas)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:listPcAreas
   (&rest __listPcAreas)
   (if (keywordp (car __listPcAreas))
       (send* _listPcAreas __listPcAreas)
     (progn
       (if __listPcAreas (setq _listPcAreas (car __listPcAreas)))
       _listPcAreas)))
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ;; rgb2cloud/pcArea[] _listPcAreas
    (apply #'+ (send-all _listPcAreas :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;; rgb2cloud/pcArea[] _listPcAreas
     (write-long (length _listPcAreas) s)
     (dolist (elem _listPcAreas)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; rgb2cloud/pcArea[] _listPcAreas
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _listPcAreas (let (r) (dotimes (i n) (push (instance rgb2cloud::pcArea :init) r)) r))
     (dolist (elem- _listPcAreas)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass rgb2cloud::rgb2cloud
  :super ros::object
  :slots ())

(setf (get rgb2cloud::rgb2cloud :md5sum-) "cbe6659d39342a7a2160bf2d36c45404")
(setf (get rgb2cloud::rgb2cloud :datatype-) "rgb2cloud/rgb2cloud")
(setf (get rgb2cloud::rgb2cloud :request) rgb2cloud::rgb2cloudRequest)
(setf (get rgb2cloud::rgb2cloud :response) rgb2cloud::rgb2cloudResponse)

(defmethod rgb2cloud::rgb2cloudRequest
  (:response () (instance rgb2cloud::rgb2cloudResponse :init)))

(setf (get rgb2cloud::rgb2cloudRequest :md5sum-) "cbe6659d39342a7a2160bf2d36c45404")
(setf (get rgb2cloud::rgb2cloudRequest :datatype-) "rgb2cloud/rgb2cloudRequest")
(setf (get rgb2cloud::rgb2cloudRequest :definition-)
      "string rgbBaseFileName
int64 areaNum
area[] listAreas

================================================================================
MSG: rgb2cloud/area
point[] listPoints

================================================================================
MSG: rgb2cloud/point
int32 x
int32 y
---
bool ok
pcArea[] listPcAreas


================================================================================
MSG: rgb2cloud/pcArea
geometry_msgs/Point32[] listPcPoint

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
")

(setf (get rgb2cloud::rgb2cloudResponse :md5sum-) "cbe6659d39342a7a2160bf2d36c45404")
(setf (get rgb2cloud::rgb2cloudResponse :datatype-) "rgb2cloud/rgb2cloudResponse")
(setf (get rgb2cloud::rgb2cloudResponse :definition-)
      "string rgbBaseFileName
int64 areaNum
area[] listAreas

================================================================================
MSG: rgb2cloud/area
point[] listPoints

================================================================================
MSG: rgb2cloud/point
int32 x
int32 y
---
bool ok
pcArea[] listPcAreas


================================================================================
MSG: rgb2cloud/pcArea
geometry_msgs/Point32[] listPcPoint

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
")



(provide :rgb2cloud/rgb2cloud "cbe6659d39342a7a2160bf2d36c45404")


