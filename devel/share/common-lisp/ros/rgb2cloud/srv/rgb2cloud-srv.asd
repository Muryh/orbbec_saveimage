
(cl:in-package :asdf)

(defsystem "rgb2cloud-srv"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :rgb2cloud-msg
)
  :components ((:file "_package")
    (:file "rgb2cloud" :depends-on ("_package_rgb2cloud"))
    (:file "_package_rgb2cloud" :depends-on ("_package"))
  ))