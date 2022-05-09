// Generated by gencpp from file example_pkg/divideTwoIntRequest.msg
// DO NOT EDIT!


#ifndef EXAMPLE_PKG_MESSAGE_DIVIDETWOINTREQUEST_H
#define EXAMPLE_PKG_MESSAGE_DIVIDETWOINTREQUEST_H


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
struct divideTwoIntRequest_
{
  typedef divideTwoIntRequest_<ContainerAllocator> Type;

  divideTwoIntRequest_()
    : requested_value1(0)
    , requested_value2(0)  {
    }
  divideTwoIntRequest_(const ContainerAllocator& _alloc)
    : requested_value1(0)
    , requested_value2(0)  {
  (void)_alloc;
    }



   typedef int32_t _requested_value1_type;
  _requested_value1_type requested_value1;

   typedef int32_t _requested_value2_type;
  _requested_value2_type requested_value2;





  typedef boost::shared_ptr< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> const> ConstPtr;

}; // struct divideTwoIntRequest_

typedef ::example_pkg::divideTwoIntRequest_<std::allocator<void> > divideTwoIntRequest;

typedef boost::shared_ptr< ::example_pkg::divideTwoIntRequest > divideTwoIntRequestPtr;
typedef boost::shared_ptr< ::example_pkg::divideTwoIntRequest const> divideTwoIntRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::example_pkg::divideTwoIntRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::example_pkg::divideTwoIntRequest_<ContainerAllocator1> & lhs, const ::example_pkg::divideTwoIntRequest_<ContainerAllocator2> & rhs)
{
  return lhs.requested_value1 == rhs.requested_value1 &&
    lhs.requested_value2 == rhs.requested_value2;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::example_pkg::divideTwoIntRequest_<ContainerAllocator1> & lhs, const ::example_pkg::divideTwoIntRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace example_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bb141a956ab53f496255ecd8417fa99c";
  }

  static const char* value(const ::example_pkg::divideTwoIntRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xbb141a956ab53f49ULL;
  static const uint64_t static_value2 = 0x6255ecd8417fa99cULL;
};

template<class ContainerAllocator>
struct DataType< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "example_pkg/divideTwoIntRequest";
  }

  static const char* value(const ::example_pkg::divideTwoIntRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 requested_value1\n"
"int32 requested_value2 \n"
;
  }

  static const char* value(const ::example_pkg::divideTwoIntRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.requested_value1);
      stream.next(m.requested_value2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct divideTwoIntRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::example_pkg::divideTwoIntRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::example_pkg::divideTwoIntRequest_<ContainerAllocator>& v)
  {
    s << indent << "requested_value1: ";
    Printer<int32_t>::stream(s, indent + "  ", v.requested_value1);
    s << indent << "requested_value2: ";
    Printer<int32_t>::stream(s, indent + "  ", v.requested_value2);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXAMPLE_PKG_MESSAGE_DIVIDETWOINTREQUEST_H
