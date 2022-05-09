// Generated by gencpp from file example_pkg/divideTwoIntResponse.msg
// DO NOT EDIT!


#ifndef EXAMPLE_PKG_MESSAGE_DIVIDETWOINTRESPONSE_H
#define EXAMPLE_PKG_MESSAGE_DIVIDETWOINTRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace example_pkg
{
template <class ContainerAllocator>
struct divideTwoIntResponse_
{
  typedef divideTwoIntResponse_<ContainerAllocator> Type;

  divideTwoIntResponse_()
    : response_value(0.0)  {
    }
  divideTwoIntResponse_(const ContainerAllocator& _alloc)
    : response_value(0.0)  {
  (void)_alloc;
    }



   typedef float _response_value_type;
  _response_value_type response_value;





  typedef boost::shared_ptr< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> const> ConstPtr;

}; // struct divideTwoIntResponse_

typedef ::example_pkg::divideTwoIntResponse_<std::allocator<void> > divideTwoIntResponse;

typedef boost::shared_ptr< ::example_pkg::divideTwoIntResponse > divideTwoIntResponsePtr;
typedef boost::shared_ptr< ::example_pkg::divideTwoIntResponse const> divideTwoIntResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::example_pkg::divideTwoIntResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::example_pkg::divideTwoIntResponse_<ContainerAllocator1> & lhs, const ::example_pkg::divideTwoIntResponse_<ContainerAllocator2> & rhs)
{
  return lhs.response_value == rhs.response_value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::example_pkg::divideTwoIntResponse_<ContainerAllocator1> & lhs, const ::example_pkg::divideTwoIntResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace example_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b2e73f0484748c10ff0715175888a4c4";
  }

  static const char* value(const ::example_pkg::divideTwoIntResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb2e73f0484748c10ULL;
  static const uint64_t static_value2 = 0xff0715175888a4c4ULL;
};

template<class ContainerAllocator>
struct DataType< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "example_pkg/divideTwoIntResponse";
  }

  static const char* value(const ::example_pkg::divideTwoIntResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 response_value\n"
;
  }

  static const char* value(const ::example_pkg::divideTwoIntResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.response_value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct divideTwoIntResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::example_pkg::divideTwoIntResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::example_pkg::divideTwoIntResponse_<ContainerAllocator>& v)
  {
    s << indent << "response_value: ";
    Printer<float>::stream(s, indent + "  ", v.response_value);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXAMPLE_PKG_MESSAGE_DIVIDETWOINTRESPONSE_H