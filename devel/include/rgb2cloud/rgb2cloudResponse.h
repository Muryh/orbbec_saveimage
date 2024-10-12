// Generated by gencpp from file rgb2cloud/rgb2cloudResponse.msg
// DO NOT EDIT!


#ifndef RGB2CLOUD_MESSAGE_RGB2CLOUDRESPONSE_H
#define RGB2CLOUD_MESSAGE_RGB2CLOUDRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rgb2cloud/pcArea.h>

namespace rgb2cloud
{
template <class ContainerAllocator>
struct rgb2cloudResponse_
{
  typedef rgb2cloudResponse_<ContainerAllocator> Type;

  rgb2cloudResponse_()
    : ok(false)
    , listPcAreas()  {
    }
  rgb2cloudResponse_(const ContainerAllocator& _alloc)
    : ok(false)
    , listPcAreas(_alloc)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;

   typedef std::vector< ::rgb2cloud::pcArea_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rgb2cloud::pcArea_<ContainerAllocator> >> _listPcAreas_type;
  _listPcAreas_type listPcAreas;





  typedef boost::shared_ptr< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> const> ConstPtr;

}; // struct rgb2cloudResponse_

typedef ::rgb2cloud::rgb2cloudResponse_<std::allocator<void> > rgb2cloudResponse;

typedef boost::shared_ptr< ::rgb2cloud::rgb2cloudResponse > rgb2cloudResponsePtr;
typedef boost::shared_ptr< ::rgb2cloud::rgb2cloudResponse const> rgb2cloudResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator1> & lhs, const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok &&
    lhs.listPcAreas == rhs.listPcAreas;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator1> & lhs, const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rgb2cloud

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "207f513b16056d404dd015afbfee55d0";
  }

  static const char* value(const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x207f513b16056d40ULL;
  static const uint64_t static_value2 = 0x4dd015afbfee55d0ULL;
};

template<class ContainerAllocator>
struct DataType< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rgb2cloud/rgb2cloudResponse";
  }

  static const char* value(const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n"
"pcArea[] listPcAreas\n"
"\n"
"\n"
"================================================================================\n"
"MSG: rgb2cloud/pcArea\n"
"geometry_msgs/Point32[] listPcPoint\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point32\n"
"# This contains the position of a point in free space(with 32 bits of precision).\n"
"# It is recommeded to use Point wherever possible instead of Point32.  \n"
"# \n"
"# This recommendation is to promote interoperability.  \n"
"#\n"
"# This message is designed to take up less space when sending\n"
"# lots of points at once, as in the case of a PointCloud.  \n"
"\n"
"float32 x\n"
"float32 y\n"
"float32 z\n"
;
  }

  static const char* value(const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
      stream.next(m.listPcAreas);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct rgb2cloudResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rgb2cloud::rgb2cloudResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
    s << indent << "listPcAreas[]" << std::endl;
    for (size_t i = 0; i < v.listPcAreas.size(); ++i)
    {
      s << indent << "  listPcAreas[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rgb2cloud::pcArea_<ContainerAllocator> >::stream(s, indent + "    ", v.listPcAreas[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RGB2CLOUD_MESSAGE_RGB2CLOUDRESPONSE_H
