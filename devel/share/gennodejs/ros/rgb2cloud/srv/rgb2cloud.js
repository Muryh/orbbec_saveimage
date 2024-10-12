// Auto-generated. Do not edit!

// (in-package rgb2cloud.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let area = require('../msg/area.js');

//-----------------------------------------------------------

let pcArea = require('../msg/pcArea.js');

//-----------------------------------------------------------

class rgb2cloudRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.rgbBaseFileName = null;
      this.areaNum = null;
      this.listAreas = null;
    }
    else {
      if (initObj.hasOwnProperty('rgbBaseFileName')) {
        this.rgbBaseFileName = initObj.rgbBaseFileName
      }
      else {
        this.rgbBaseFileName = '';
      }
      if (initObj.hasOwnProperty('areaNum')) {
        this.areaNum = initObj.areaNum
      }
      else {
        this.areaNum = 0;
      }
      if (initObj.hasOwnProperty('listAreas')) {
        this.listAreas = initObj.listAreas
      }
      else {
        this.listAreas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rgb2cloudRequest
    // Serialize message field [rgbBaseFileName]
    bufferOffset = _serializer.string(obj.rgbBaseFileName, buffer, bufferOffset);
    // Serialize message field [areaNum]
    bufferOffset = _serializer.int64(obj.areaNum, buffer, bufferOffset);
    // Serialize message field [listAreas]
    // Serialize the length for message field [listAreas]
    bufferOffset = _serializer.uint32(obj.listAreas.length, buffer, bufferOffset);
    obj.listAreas.forEach((val) => {
      bufferOffset = area.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rgb2cloudRequest
    let len;
    let data = new rgb2cloudRequest(null);
    // Deserialize message field [rgbBaseFileName]
    data.rgbBaseFileName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [areaNum]
    data.areaNum = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [listAreas]
    // Deserialize array length for message field [listAreas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.listAreas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.listAreas[i] = area.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.rgbBaseFileName);
    object.listAreas.forEach((val) => {
      length += area.getMessageSize(val);
    });
    return length + 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rgb2cloud/rgb2cloudRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '51aab275aa41040328bc2eed7f198470';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string rgbBaseFileName
    int64 areaNum
    area[] listAreas
    
    ================================================================================
    MSG: rgb2cloud/area
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
    const resolved = new rgb2cloudRequest(null);
    if (msg.rgbBaseFileName !== undefined) {
      resolved.rgbBaseFileName = msg.rgbBaseFileName;
    }
    else {
      resolved.rgbBaseFileName = ''
    }

    if (msg.areaNum !== undefined) {
      resolved.areaNum = msg.areaNum;
    }
    else {
      resolved.areaNum = 0
    }

    if (msg.listAreas !== undefined) {
      resolved.listAreas = new Array(msg.listAreas.length);
      for (let i = 0; i < resolved.listAreas.length; ++i) {
        resolved.listAreas[i] = area.Resolve(msg.listAreas[i]);
      }
    }
    else {
      resolved.listAreas = []
    }

    return resolved;
    }
};

class rgb2cloudResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.ok = null;
      this.listPcAreas = null;
    }
    else {
      if (initObj.hasOwnProperty('ok')) {
        this.ok = initObj.ok
      }
      else {
        this.ok = false;
      }
      if (initObj.hasOwnProperty('listPcAreas')) {
        this.listPcAreas = initObj.listPcAreas
      }
      else {
        this.listPcAreas = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type rgb2cloudResponse
    // Serialize message field [ok]
    bufferOffset = _serializer.bool(obj.ok, buffer, bufferOffset);
    // Serialize message field [listPcAreas]
    // Serialize the length for message field [listPcAreas]
    bufferOffset = _serializer.uint32(obj.listPcAreas.length, buffer, bufferOffset);
    obj.listPcAreas.forEach((val) => {
      bufferOffset = pcArea.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type rgb2cloudResponse
    let len;
    let data = new rgb2cloudResponse(null);
    // Deserialize message field [ok]
    data.ok = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [listPcAreas]
    // Deserialize array length for message field [listPcAreas]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.listPcAreas = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.listPcAreas[i] = pcArea.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.listPcAreas.forEach((val) => {
      length += pcArea.getMessageSize(val);
    });
    return length + 5;
  }

  static datatype() {
    // Returns string type for a service object
    return 'rgb2cloud/rgb2cloudResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '207f513b16056d404dd015afbfee55d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new rgb2cloudResponse(null);
    if (msg.ok !== undefined) {
      resolved.ok = msg.ok;
    }
    else {
      resolved.ok = false
    }

    if (msg.listPcAreas !== undefined) {
      resolved.listPcAreas = new Array(msg.listPcAreas.length);
      for (let i = 0; i < resolved.listPcAreas.length; ++i) {
        resolved.listPcAreas[i] = pcArea.Resolve(msg.listPcAreas[i]);
      }
    }
    else {
      resolved.listPcAreas = []
    }

    return resolved;
    }
};

module.exports = {
  Request: rgb2cloudRequest,
  Response: rgb2cloudResponse,
  md5sum() { return 'cbe6659d39342a7a2160bf2d36c45404'; },
  datatype() { return 'rgb2cloud/rgb2cloud'; }
};
