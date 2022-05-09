// Auto-generated. Do not edit!

// (in-package example_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class divideTwoIntRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.requested_value1 = null;
      this.requested_value2 = null;
    }
    else {
      if (initObj.hasOwnProperty('requested_value1')) {
        this.requested_value1 = initObj.requested_value1
      }
      else {
        this.requested_value1 = 0;
      }
      if (initObj.hasOwnProperty('requested_value2')) {
        this.requested_value2 = initObj.requested_value2
      }
      else {
        this.requested_value2 = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type divideTwoIntRequest
    // Serialize message field [requested_value1]
    bufferOffset = _serializer.int32(obj.requested_value1, buffer, bufferOffset);
    // Serialize message field [requested_value2]
    bufferOffset = _serializer.int32(obj.requested_value2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type divideTwoIntRequest
    let len;
    let data = new divideTwoIntRequest(null);
    // Deserialize message field [requested_value1]
    data.requested_value1 = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [requested_value2]
    data.requested_value2 = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'example_pkg/divideTwoIntRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'bb141a956ab53f496255ecd8417fa99c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 requested_value1
    int32 requested_value2 
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new divideTwoIntRequest(null);
    if (msg.requested_value1 !== undefined) {
      resolved.requested_value1 = msg.requested_value1;
    }
    else {
      resolved.requested_value1 = 0
    }

    if (msg.requested_value2 !== undefined) {
      resolved.requested_value2 = msg.requested_value2;
    }
    else {
      resolved.requested_value2 = 0
    }

    return resolved;
    }
};

class divideTwoIntResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.response_value = null;
    }
    else {
      if (initObj.hasOwnProperty('response_value')) {
        this.response_value = initObj.response_value
      }
      else {
        this.response_value = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type divideTwoIntResponse
    // Serialize message field [response_value]
    bufferOffset = _serializer.float32(obj.response_value, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type divideTwoIntResponse
    let len;
    let data = new divideTwoIntResponse(null);
    // Deserialize message field [response_value]
    data.response_value = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'example_pkg/divideTwoIntResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b2e73f0484748c10ff0715175888a4c4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 response_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new divideTwoIntResponse(null);
    if (msg.response_value !== undefined) {
      resolved.response_value = msg.response_value;
    }
    else {
      resolved.response_value = 0.0
    }

    return resolved;
    }
};

module.exports = {
  Request: divideTwoIntRequest,
  Response: divideTwoIntResponse,
  md5sum() { return '3a24c106a3d467da7d04bd8ae94af9ac'; },
  datatype() { return 'example_pkg/divideTwoInt'; }
};
