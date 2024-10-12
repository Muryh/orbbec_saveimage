// Auto-generated. Do not edit!

// (in-package rgb2cloud.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class pcArea {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.listPcPoint = null;
    }
    else {
      if (initObj.hasOwnProperty('listPcPoint')) {
        this.listPcPoint = initObj.listPcPoint
      }
      else {
        this.listPcPoint = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type pcArea
    // Serialize message field [listPcPoint]
    // Serialize the length for message field [listPcPoint]
    bufferOffset = _serializer.uint32(obj.listPcPoint.length, buffer, bufferOffset);
    obj.listPcPoint.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point32.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type pcArea
    let len;
    let data = new pcArea(null);
    // Deserialize message field [listPcPoint]
    // Deserialize array length for message field [listPcPoint]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.listPcPoint = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.listPcPoint[i] = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 12 * object.listPcPoint.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rgb2cloud/pcArea';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1910f595f1099a0b020344db77cf9645';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new pcArea(null);
    if (msg.listPcPoint !== undefined) {
      resolved.listPcPoint = new Array(msg.listPcPoint.length);
      for (let i = 0; i < resolved.listPcPoint.length; ++i) {
        resolved.listPcPoint[i] = geometry_msgs.msg.Point32.Resolve(msg.listPcPoint[i]);
      }
    }
    else {
      resolved.listPcPoint = []
    }

    return resolved;
    }
};

module.exports = pcArea;
