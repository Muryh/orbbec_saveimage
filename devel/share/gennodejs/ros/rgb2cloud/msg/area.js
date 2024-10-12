// Auto-generated. Do not edit!

// (in-package rgb2cloud.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let point = require('./point.js');

//-----------------------------------------------------------

class area {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.listPoints = null;
    }
    else {
      if (initObj.hasOwnProperty('listPoints')) {
        this.listPoints = initObj.listPoints
      }
      else {
        this.listPoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type area
    // Serialize message field [listPoints]
    // Serialize the length for message field [listPoints]
    bufferOffset = _serializer.uint32(obj.listPoints.length, buffer, bufferOffset);
    obj.listPoints.forEach((val) => {
      bufferOffset = point.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type area
    let len;
    let data = new area(null);
    // Deserialize message field [listPoints]
    // Deserialize array length for message field [listPoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.listPoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.listPoints[i] = point.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 8 * object.listPoints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rgb2cloud/area';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'cb1b145f81271fff7c5c96220112fa96';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    point[] listPoints
    
    ================================================================================
    MSG: rgb2cloud/point
    int32 x
    int32 y
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new area(null);
    if (msg.listPoints !== undefined) {
      resolved.listPoints = new Array(msg.listPoints.length);
      for (let i = 0; i < resolved.listPoints.length; ++i) {
        resolved.listPoints[i] = point.Resolve(msg.listPoints[i]);
      }
    }
    else {
      resolved.listPoints = []
    }

    return resolved;
    }
};

module.exports = area;
