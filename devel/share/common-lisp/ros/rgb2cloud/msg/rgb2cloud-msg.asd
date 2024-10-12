
(cl:in-package :asdf)

(defsystem "rgb2cloud-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
)
  :components ((:file "_package")
    (:file "area" :depends-on ("_package_area"))
    (:file "_package_area" :depends-on ("_package"))
    (:file "pcArea" :depends-on ("_package_pcArea"))
    (:file "_package_pcArea" :depends-on ("_package"))
    (:file "point" :depends-on ("_package_point"))
    (:file "_package_point" :depends-on ("_package"))
  ))