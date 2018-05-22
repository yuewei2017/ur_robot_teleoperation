# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from ur_msgs/RobotStateRTMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class RobotStateRTMsg(genpy.Message):
  _md5sum = "ce6feddd3ccb4ca7dbcd0ff105b603c7"
  _type = "ur_msgs/RobotStateRTMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Data structure for the realtime communications interface (aka Matlab interface)
# used by the Universal Robots controller
# 
# This data structure is send at 125 Hz on TCP port 30003
# 
# Dokumentation can be found on the Universal Robots Support Wiki
# (http://wiki03.lynero.net/Technical/RealTimeClientInterface?rev=9)

float64 time
float64[] q_target
float64[] qd_target
float64[] qdd_target
float64[] i_target
float64[] m_target
float64[] q_actual
float64[] qd_actual
float64[] i_actual
float64[] tool_acc_values
float64[] tcp_force
float64[] tool_vector
float64[] tcp_speed
float64 digital_input_bits
float64[] motor_temperatures
float64 controller_timer
float64 test_value
float64 robot_mode
float64[] joint_modes
"""
  __slots__ = ['time','q_target','qd_target','qdd_target','i_target','m_target','q_actual','qd_actual','i_actual','tool_acc_values','tcp_force','tool_vector','tcp_speed','digital_input_bits','motor_temperatures','controller_timer','test_value','robot_mode','joint_modes']
  _slot_types = ['float64','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64[]','float64','float64[]','float64','float64','float64','float64[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       time,q_target,qd_target,qdd_target,i_target,m_target,q_actual,qd_actual,i_actual,tool_acc_values,tcp_force,tool_vector,tcp_speed,digital_input_bits,motor_temperatures,controller_timer,test_value,robot_mode,joint_modes

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RobotStateRTMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.time is None:
        self.time = 0.
      if self.q_target is None:
        self.q_target = []
      if self.qd_target is None:
        self.qd_target = []
      if self.qdd_target is None:
        self.qdd_target = []
      if self.i_target is None:
        self.i_target = []
      if self.m_target is None:
        self.m_target = []
      if self.q_actual is None:
        self.q_actual = []
      if self.qd_actual is None:
        self.qd_actual = []
      if self.i_actual is None:
        self.i_actual = []
      if self.tool_acc_values is None:
        self.tool_acc_values = []
      if self.tcp_force is None:
        self.tcp_force = []
      if self.tool_vector is None:
        self.tool_vector = []
      if self.tcp_speed is None:
        self.tcp_speed = []
      if self.digital_input_bits is None:
        self.digital_input_bits = 0.
      if self.motor_temperatures is None:
        self.motor_temperatures = []
      if self.controller_timer is None:
        self.controller_timer = 0.
      if self.test_value is None:
        self.test_value = 0.
      if self.robot_mode is None:
        self.robot_mode = 0.
      if self.joint_modes is None:
        self.joint_modes = []
    else:
      self.time = 0.
      self.q_target = []
      self.qd_target = []
      self.qdd_target = []
      self.i_target = []
      self.m_target = []
      self.q_actual = []
      self.qd_actual = []
      self.i_actual = []
      self.tool_acc_values = []
      self.tcp_force = []
      self.tool_vector = []
      self.tcp_speed = []
      self.digital_input_bits = 0.
      self.motor_temperatures = []
      self.controller_timer = 0.
      self.test_value = 0.
      self.robot_mode = 0.
      self.joint_modes = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      buff.write(_struct_d.pack(self.time))
      length = len(self.q_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q_target))
      length = len(self.qd_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.qd_target))
      length = len(self.qdd_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.qdd_target))
      length = len(self.i_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.i_target))
      length = len(self.m_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.m_target))
      length = len(self.q_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.q_actual))
      length = len(self.qd_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.qd_actual))
      length = len(self.i_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.i_actual))
      length = len(self.tool_acc_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.tool_acc_values))
      length = len(self.tcp_force)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.tcp_force))
      length = len(self.tool_vector)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.tool_vector))
      length = len(self.tcp_speed)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.tcp_speed))
      buff.write(_struct_d.pack(self.digital_input_bits))
      length = len(self.motor_temperatures)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.motor_temperatures))
      _x = self
      buff.write(_struct_3d.pack(_x.controller_timer, _x.test_value, _x.robot_mode))
      length = len(self.joint_modes)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.pack(pattern, *self.joint_modes))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 8
      (self.time,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_target = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qd_target = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qdd_target = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.i_target = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.m_target = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_actual = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qd_actual = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.i_actual = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tool_acc_values = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tcp_force = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tool_vector = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tcp_speed = struct.unpack(pattern, str[start:end])
      start = end
      end += 8
      (self.digital_input_bits,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.motor_temperatures = struct.unpack(pattern, str[start:end])
      _x = self
      start = end
      end += 24
      (_x.controller_timer, _x.test_value, _x.robot_mode,) = _struct_3d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_modes = struct.unpack(pattern, str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_d.pack(self.time))
      length = len(self.q_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q_target.tostring())
      length = len(self.qd_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.qd_target.tostring())
      length = len(self.qdd_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.qdd_target.tostring())
      length = len(self.i_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.i_target.tostring())
      length = len(self.m_target)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.m_target.tostring())
      length = len(self.q_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.q_actual.tostring())
      length = len(self.qd_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.qd_actual.tostring())
      length = len(self.i_actual)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.i_actual.tostring())
      length = len(self.tool_acc_values)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tool_acc_values.tostring())
      length = len(self.tcp_force)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tcp_force.tostring())
      length = len(self.tool_vector)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tool_vector.tostring())
      length = len(self.tcp_speed)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tcp_speed.tostring())
      buff.write(_struct_d.pack(self.digital_input_bits))
      length = len(self.motor_temperatures)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.motor_temperatures.tostring())
      _x = self
      buff.write(_struct_3d.pack(_x.controller_timer, _x.test_value, _x.robot_mode))
      length = len(self.joint_modes)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.joint_modes.tostring())
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 8
      (self.time,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_target = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qd_target = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qdd_target = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.i_target = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.m_target = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.q_actual = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.qd_actual = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.i_actual = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tool_acc_values = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tcp_force = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tool_vector = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.tcp_speed = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      start = end
      end += 8
      (self.digital_input_bits,) = _struct_d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.motor_temperatures = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 24
      (_x.controller_timer, _x.test_value, _x.robot_mode,) = _struct_3d.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      end += struct.calcsize(pattern)
      self.joint_modes = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")
_struct_3d = struct.Struct("<3d")