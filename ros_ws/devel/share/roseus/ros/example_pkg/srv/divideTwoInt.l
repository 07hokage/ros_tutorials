;; Auto-generated. Do not edit!


(when (boundp 'example_pkg::divideTwoInt)
  (if (not (find-package "EXAMPLE_PKG"))
    (make-package "EXAMPLE_PKG"))
  (shadow 'divideTwoInt (find-package "EXAMPLE_PKG")))
(unless (find-package "EXAMPLE_PKG::DIVIDETWOINT")
  (make-package "EXAMPLE_PKG::DIVIDETWOINT"))
(unless (find-package "EXAMPLE_PKG::DIVIDETWOINTREQUEST")
  (make-package "EXAMPLE_PKG::DIVIDETWOINTREQUEST"))
(unless (find-package "EXAMPLE_PKG::DIVIDETWOINTRESPONSE")
  (make-package "EXAMPLE_PKG::DIVIDETWOINTRESPONSE"))

(in-package "ROS")





(defclass example_pkg::divideTwoIntRequest
  :super ros::object
  :slots (_requested_value1 _requested_value2 ))

(defmethod example_pkg::divideTwoIntRequest
  (:init
   (&key
    ((:requested_value1 __requested_value1) 0)
    ((:requested_value2 __requested_value2) 0)
    )
   (send-super :init)
   (setq _requested_value1 (round __requested_value1))
   (setq _requested_value2 (round __requested_value2))
   self)
  (:requested_value1
   (&optional __requested_value1)
   (if __requested_value1 (setq _requested_value1 __requested_value1)) _requested_value1)
  (:requested_value2
   (&optional __requested_value2)
   (if __requested_value2 (setq _requested_value2 __requested_value2)) _requested_value2)
  (:serialization-length
   ()
   (+
    ;; int32 _requested_value1
    4
    ;; int32 _requested_value2
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int32 _requested_value1
       (write-long _requested_value1 s)
     ;; int32 _requested_value2
       (write-long _requested_value2 s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int32 _requested_value1
     (setq _requested_value1 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _requested_value2
     (setq _requested_value2 (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(defclass example_pkg::divideTwoIntResponse
  :super ros::object
  :slots (_response_value ))

(defmethod example_pkg::divideTwoIntResponse
  (:init
   (&key
    ((:response_value __response_value) 0.0)
    )
   (send-super :init)
   (setq _response_value (float __response_value))
   self)
  (:response_value
   (&optional __response_value)
   (if __response_value (setq _response_value __response_value)) _response_value)
  (:serialization-length
   ()
   (+
    ;; float32 _response_value
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _response_value
       (sys::poke _response_value (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _response_value
     (setq _response_value (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;;
   self)
  )

(defclass example_pkg::divideTwoInt
  :super ros::object
  :slots ())

(setf (get example_pkg::divideTwoInt :md5sum-) "3a24c106a3d467da7d04bd8ae94af9ac")
(setf (get example_pkg::divideTwoInt :datatype-) "example_pkg/divideTwoInt")
(setf (get example_pkg::divideTwoInt :request) example_pkg::divideTwoIntRequest)
(setf (get example_pkg::divideTwoInt :response) example_pkg::divideTwoIntResponse)

(defmethod example_pkg::divideTwoIntRequest
  (:response () (instance example_pkg::divideTwoIntResponse :init)))

(setf (get example_pkg::divideTwoIntRequest :md5sum-) "3a24c106a3d467da7d04bd8ae94af9ac")
(setf (get example_pkg::divideTwoIntRequest :datatype-) "example_pkg/divideTwoIntRequest")
(setf (get example_pkg::divideTwoIntRequest :definition-)
      "int32 requested_value1
int32 requested_value2 
---
float32 response_value
")

(setf (get example_pkg::divideTwoIntResponse :md5sum-) "3a24c106a3d467da7d04bd8ae94af9ac")
(setf (get example_pkg::divideTwoIntResponse :datatype-) "example_pkg/divideTwoIntResponse")
(setf (get example_pkg::divideTwoIntResponse :definition-)
      "int32 requested_value1
int32 requested_value2 
---
float32 response_value
")



(provide :example_pkg/divideTwoInt "3a24c106a3d467da7d04bd8ae94af9ac")


