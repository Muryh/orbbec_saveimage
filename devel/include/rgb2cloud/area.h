// Generated by gencpp from file rgb2cloud/area.msg
// DO NOT EDIT!


#ifndef RGB2CLOUD_MESSAGE_AREA_H
#define RGB2CLOUD_MESSAGE_AREA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <rgb2cloud/point.h>

namespace rgb2cloud
{
template <class ContainerAllocator>
struct area_
{
  typedef area_<ContainerAllocator> Type;

  area_()
    : listPoints()  {
    }
  area_(const ContainerAllocator& _alloc)
    : listPoints(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector< ::rgb2cloud::point_<ContainerAllocator> , typename std::allocator_traits<ContainerAllocator>::template rebind_alloc< ::rgb2cloud::point_<ContainerAllocator> >> _listPoints_type;
  _listPoints_type listPoints;





  typedef boost::shared_ptr< ::rgb2cloud::area_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::rgb2cloud::area_<ContainerAllocator> const> ConstPtr;

}; // struct area_

typedef ::rgb2cloud::area_<std::allocator<void> > area;

typedef boost::shared_ptr< ::rgb2cloud::area > areaPtr;
typedef boost::shared_ptr< ::rgb2cloud::area const> areaConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::rgb2cloud::area_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::rgb2cloud::area_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::rgb2cloud::area_<ContainerAllocator1> & lhs, const ::rgb2cloud::area_<ContainerAllocator2> & rhs)
{
  return lhs.listPoints == rhs.listPoints;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::rgb2cloud::area_<ContainerAllocator1> & lhs, const ::rgb2cloud::area_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace rgb2cloud

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::rgb2cloud::area_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::rgb2cloud::area_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgb2cloud::area_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::rgb2cloud::area_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgb2cloud::area_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::rgb2cloud::area_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::rgb2cloud::area_<ContainerAllocator> >
{
  static const char* value()
  {
    return "cb1b145f81271fff7c5c96220112fa96";
  }

  static const char* value(const ::rgb2cloud::area_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xcb1b145f81271fffULL;
  static const uint64_t static_value2 = 0x7c5c96220112fa96ULL;
};

template<class ContainerAllocator>
struct DataType< ::rgb2cloud::area_<ContainerAllocator> >
{
  static const char* value()
  {
    return "rgb2cloud/area";
  }

  static const char* value(const ::rgb2cloud::area_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::rgb2cloud::area_<ContainerAllocator> >
{
  static const char* value()
  {
    return "point[] listPoints\n"
"\n"
"================================================================================\n"
"MSG: rgb2cloud/point\n"
"int32 x\n"
"int32 y\n"
;
  }

  static const char* value(const ::rgb2cloud::area_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::rgb2cloud::area_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.listPoints);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct area_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::rgb2cloud::area_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::rgb2cloud::area_<ContainerAllocator>& v)
  {
    s << indent << "listPoints[]" << std::endl;
    for (size_t i = 0; i < v.listPoints.size(); ++i)
    {
      s << indent << "  listPoints[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::rgb2cloud::point_<ContainerAllocator> >::stream(s, indent + "    ", v.listPoints[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // RGB2CLOUD_MESSAGE_AREA_H
