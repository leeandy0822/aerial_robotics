// Auto-generated. Do not edit!

// (in-package ping360_sonar.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class SonarEcho {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angle = null;
      this.gain = null;
      this.number_of_samples = null;
      this.transmit_frequency = null;
      this.speed_of_sound = null;
      this.range = null;
      this.intensities = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angle')) {
        this.angle = initObj.angle
      }
      else {
        this.angle = 0.0;
      }
      if (initObj.hasOwnProperty('gain')) {
        this.gain = initObj.gain
      }
      else {
        this.gain = 0;
      }
      if (initObj.hasOwnProperty('number_of_samples')) {
        this.number_of_samples = initObj.number_of_samples
      }
      else {
        this.number_of_samples = 0;
      }
      if (initObj.hasOwnProperty('transmit_frequency')) {
        this.transmit_frequency = initObj.transmit_frequency
      }
      else {
        this.transmit_frequency = 0;
      }
      if (initObj.hasOwnProperty('speed_of_sound')) {
        this.speed_of_sound = initObj.speed_of_sound
      }
      else {
        this.speed_of_sound = 0;
      }
      if (initObj.hasOwnProperty('range')) {
        this.range = initObj.range
      }
      else {
        this.range = 0;
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type SonarEcho
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angle]
    bufferOffset = _serializer.float32(obj.angle, buffer, bufferOffset);
    // Serialize message field [gain]
    bufferOffset = _serializer.uint8(obj.gain, buffer, bufferOffset);
    // Serialize message field [number_of_samples]
    bufferOffset = _serializer.uint16(obj.number_of_samples, buffer, bufferOffset);
    // Serialize message field [transmit_frequency]
    bufferOffset = _serializer.uint16(obj.transmit_frequency, buffer, bufferOffset);
    // Serialize message field [speed_of_sound]
    bufferOffset = _serializer.uint16(obj.speed_of_sound, buffer, bufferOffset);
    // Serialize message field [range]
    bufferOffset = _serializer.uint8(obj.range, buffer, bufferOffset);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.uint8(obj.intensities, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type SonarEcho
    let len;
    let data = new SonarEcho(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle]
    data.angle = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [gain]
    data.gain = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [number_of_samples]
    data.number_of_samples = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [transmit_frequency]
    data.transmit_frequency = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [speed_of_sound]
    data.speed_of_sound = _deserializer.uint16(buffer, bufferOffset);
    // Deserialize message field [range]
    data.range = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.uint8(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += object.intensities.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'ping360_sonar/SonarEcho';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c3a4e4ed79c9e54919e2ef7e62c1eb5e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header            #header info
    float32 angle               # the measurement angle [rad]
    uint8 gain  # Sonar Gain
    uint16 number_of_samples 
    uint16 transmit_frequency # [kHz]
    uint16 speed_of_sound # [m/s]
    uint8 range      #  range value [m]
    uint8[] intensities    # intensity data [0-255].  This is the actual data received from the sonar
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new SonarEcho(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angle !== undefined) {
      resolved.angle = msg.angle;
    }
    else {
      resolved.angle = 0.0
    }

    if (msg.gain !== undefined) {
      resolved.gain = msg.gain;
    }
    else {
      resolved.gain = 0
    }

    if (msg.number_of_samples !== undefined) {
      resolved.number_of_samples = msg.number_of_samples;
    }
    else {
      resolved.number_of_samples = 0
    }

    if (msg.transmit_frequency !== undefined) {
      resolved.transmit_frequency = msg.transmit_frequency;
    }
    else {
      resolved.transmit_frequency = 0
    }

    if (msg.speed_of_sound !== undefined) {
      resolved.speed_of_sound = msg.speed_of_sound;
    }
    else {
      resolved.speed_of_sound = 0
    }

    if (msg.range !== undefined) {
      resolved.range = msg.range;
    }
    else {
      resolved.range = 0
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    return resolved;
    }
};

module.exports = SonarEcho;
