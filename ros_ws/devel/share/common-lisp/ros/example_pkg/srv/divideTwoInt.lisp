; Auto-generated. Do not edit!


(cl:in-package example_pkg-srv)


;//! \htmlinclude divideTwoInt-request.msg.html

(cl:defclass <divideTwoInt-request> (roslisp-msg-protocol:ros-message)
  ((requested_value1
    :reader requested_value1
    :initarg :requested_value1
    :type cl:integer
    :initform 0)
   (requested_value2
    :reader requested_value2
    :initarg :requested_value2
    :type cl:integer
    :initform 0))
)

(cl:defclass divideTwoInt-request (<divideTwoInt-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <divideTwoInt-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'divideTwoInt-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_pkg-srv:<divideTwoInt-request> is deprecated: use example_pkg-srv:divideTwoInt-request instead.")))

(cl:ensure-generic-function 'requested_value1-val :lambda-list '(m))
(cl:defmethod requested_value1-val ((m <divideTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_pkg-srv:requested_value1-val is deprecated.  Use example_pkg-srv:requested_value1 instead.")
  (requested_value1 m))

(cl:ensure-generic-function 'requested_value2-val :lambda-list '(m))
(cl:defmethod requested_value2-val ((m <divideTwoInt-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_pkg-srv:requested_value2-val is deprecated.  Use example_pkg-srv:requested_value2 instead.")
  (requested_value2 m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <divideTwoInt-request>) ostream)
  "Serializes a message object of type '<divideTwoInt-request>"
  (cl:let* ((signed (cl:slot-value msg 'requested_value1)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'requested_value2)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <divideTwoInt-request>) istream)
  "Deserializes a message object of type '<divideTwoInt-request>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_value1) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'requested_value2) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<divideTwoInt-request>)))
  "Returns string type for a service object of type '<divideTwoInt-request>"
  "example_pkg/divideTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'divideTwoInt-request)))
  "Returns string type for a service object of type 'divideTwoInt-request"
  "example_pkg/divideTwoIntRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<divideTwoInt-request>)))
  "Returns md5sum for a message object of type '<divideTwoInt-request>"
  "3a24c106a3d467da7d04bd8ae94af9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'divideTwoInt-request)))
  "Returns md5sum for a message object of type 'divideTwoInt-request"
  "3a24c106a3d467da7d04bd8ae94af9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<divideTwoInt-request>)))
  "Returns full string definition for message of type '<divideTwoInt-request>"
  (cl:format cl:nil "int32 requested_value1~%int32 requested_value2 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'divideTwoInt-request)))
  "Returns full string definition for message of type 'divideTwoInt-request"
  (cl:format cl:nil "int32 requested_value1~%int32 requested_value2 ~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <divideTwoInt-request>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <divideTwoInt-request>))
  "Converts a ROS message object to a list"
  (cl:list 'divideTwoInt-request
    (cl:cons ':requested_value1 (requested_value1 msg))
    (cl:cons ':requested_value2 (requested_value2 msg))
))
;//! \htmlinclude divideTwoInt-response.msg.html

(cl:defclass <divideTwoInt-response> (roslisp-msg-protocol:ros-message)
  ((response_value
    :reader response_value
    :initarg :response_value
    :type cl:float
    :initform 0.0))
)

(cl:defclass divideTwoInt-response (<divideTwoInt-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <divideTwoInt-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'divideTwoInt-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name example_pkg-srv:<divideTwoInt-response> is deprecated: use example_pkg-srv:divideTwoInt-response instead.")))

(cl:ensure-generic-function 'response_value-val :lambda-list '(m))
(cl:defmethod response_value-val ((m <divideTwoInt-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader example_pkg-srv:response_value-val is deprecated.  Use example_pkg-srv:response_value instead.")
  (response_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <divideTwoInt-response>) ostream)
  "Serializes a message object of type '<divideTwoInt-response>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'response_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <divideTwoInt-response>) istream)
  "Deserializes a message object of type '<divideTwoInt-response>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'response_value) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<divideTwoInt-response>)))
  "Returns string type for a service object of type '<divideTwoInt-response>"
  "example_pkg/divideTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'divideTwoInt-response)))
  "Returns string type for a service object of type 'divideTwoInt-response"
  "example_pkg/divideTwoIntResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<divideTwoInt-response>)))
  "Returns md5sum for a message object of type '<divideTwoInt-response>"
  "3a24c106a3d467da7d04bd8ae94af9ac")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'divideTwoInt-response)))
  "Returns md5sum for a message object of type 'divideTwoInt-response"
  "3a24c106a3d467da7d04bd8ae94af9ac")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<divideTwoInt-response>)))
  "Returns full string definition for message of type '<divideTwoInt-response>"
  (cl:format cl:nil "float32 response_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'divideTwoInt-response)))
  "Returns full string definition for message of type 'divideTwoInt-response"
  (cl:format cl:nil "float32 response_value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <divideTwoInt-response>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <divideTwoInt-response>))
  "Converts a ROS message object to a list"
  (cl:list 'divideTwoInt-response
    (cl:cons ':response_value (response_value msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'divideTwoInt)))
  'divideTwoInt-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'divideTwoInt)))
  'divideTwoInt-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'divideTwoInt)))
  "Returns string type for a service object of type '<divideTwoInt>"
  "example_pkg/divideTwoInt")