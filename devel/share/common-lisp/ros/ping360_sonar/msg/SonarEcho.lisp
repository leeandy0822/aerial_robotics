; Auto-generated. Do not edit!


(cl:in-package ping360_sonar-msg)


;//! \htmlinclude SonarEcho.msg.html

(cl:defclass <SonarEcho> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (angle
    :reader angle
    :initarg :angle
    :type cl:float
    :initform 0.0)
   (gain
    :reader gain
    :initarg :gain
    :type cl:fixnum
    :initform 0)
   (number_of_samples
    :reader number_of_samples
    :initarg :number_of_samples
    :type cl:fixnum
    :initform 0)
   (transmit_frequency
    :reader transmit_frequency
    :initarg :transmit_frequency
    :type cl:fixnum
    :initform 0)
   (speed_of_sound
    :reader speed_of_sound
    :initarg :speed_of_sound
    :type cl:fixnum
    :initform 0)
   (range
    :reader range
    :initarg :range
    :type cl:fixnum
    :initform 0)
   (intensities
    :reader intensities
    :initarg :intensities
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass SonarEcho (<SonarEcho>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarEcho>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarEcho)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name ping360_sonar-msg:<SonarEcho> is deprecated: use ping360_sonar-msg:SonarEcho instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:header-val is deprecated.  Use ping360_sonar-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'angle-val :lambda-list '(m))
(cl:defmethod angle-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:angle-val is deprecated.  Use ping360_sonar-msg:angle instead.")
  (angle m))

(cl:ensure-generic-function 'gain-val :lambda-list '(m))
(cl:defmethod gain-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:gain-val is deprecated.  Use ping360_sonar-msg:gain instead.")
  (gain m))

(cl:ensure-generic-function 'number_of_samples-val :lambda-list '(m))
(cl:defmethod number_of_samples-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:number_of_samples-val is deprecated.  Use ping360_sonar-msg:number_of_samples instead.")
  (number_of_samples m))

(cl:ensure-generic-function 'transmit_frequency-val :lambda-list '(m))
(cl:defmethod transmit_frequency-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:transmit_frequency-val is deprecated.  Use ping360_sonar-msg:transmit_frequency instead.")
  (transmit_frequency m))

(cl:ensure-generic-function 'speed_of_sound-val :lambda-list '(m))
(cl:defmethod speed_of_sound-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:speed_of_sound-val is deprecated.  Use ping360_sonar-msg:speed_of_sound instead.")
  (speed_of_sound m))

(cl:ensure-generic-function 'range-val :lambda-list '(m))
(cl:defmethod range-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:range-val is deprecated.  Use ping360_sonar-msg:range instead.")
  (range m))

(cl:ensure-generic-function 'intensities-val :lambda-list '(m))
(cl:defmethod intensities-val ((m <SonarEcho>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader ping360_sonar-msg:intensities-val is deprecated.  Use ping360_sonar-msg:intensities instead.")
  (intensities m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarEcho>) ostream)
  "Serializes a message object of type '<SonarEcho>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'angle))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gain)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_samples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_samples)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmit_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transmit_frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_of_sound)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_of_sound)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'intensities))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'intensities))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarEcho>) istream)
  "Deserializes a message object of type '<SonarEcho>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'angle) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'gain)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'number_of_samples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'number_of_samples)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'transmit_frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'transmit_frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'speed_of_sound)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'speed_of_sound)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'range)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'intensities) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'intensities)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarEcho>)))
  "Returns string type for a message object of type '<SonarEcho>"
  "ping360_sonar/SonarEcho")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarEcho)))
  "Returns string type for a message object of type 'SonarEcho"
  "ping360_sonar/SonarEcho")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarEcho>)))
  "Returns md5sum for a message object of type '<SonarEcho>"
  "c3a4e4ed79c9e54919e2ef7e62c1eb5e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarEcho)))
  "Returns md5sum for a message object of type 'SonarEcho"
  "c3a4e4ed79c9e54919e2ef7e62c1eb5e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarEcho>)))
  "Returns full string definition for message of type '<SonarEcho>"
  (cl:format cl:nil "Header header            #header info~%float32 angle               # the measurement angle [rad]~%uint8 gain  # Sonar Gain~%uint16 number_of_samples ~%uint16 transmit_frequency # [kHz]~%uint16 speed_of_sound # [m/s]~%uint8 range      #  range value [m]~%uint8[] intensities    # intensity data [0-255].  This is the actual data received from the sonar~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarEcho)))
  "Returns full string definition for message of type 'SonarEcho"
  (cl:format cl:nil "Header header            #header info~%float32 angle               # the measurement angle [rad]~%uint8 gain  # Sonar Gain~%uint16 number_of_samples ~%uint16 transmit_frequency # [kHz]~%uint16 speed_of_sound # [m/s]~%uint8 range      #  range value [m]~%uint8[] intensities    # intensity data [0-255].  This is the actual data received from the sonar~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarEcho>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     1
     2
     2
     2
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'intensities) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarEcho>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarEcho
    (cl:cons ':header (header msg))
    (cl:cons ':angle (angle msg))
    (cl:cons ':gain (gain msg))
    (cl:cons ':number_of_samples (number_of_samples msg))
    (cl:cons ':transmit_frequency (transmit_frequency msg))
    (cl:cons ':speed_of_sound (speed_of_sound msg))
    (cl:cons ':range (range msg))
    (cl:cons ':intensities (intensities msg))
))
