// Generated by gencpp from file example_pkg/divideTwoInt.msg
// DO NOT EDIT!


#ifndef EXAMPLE_PKG_MESSAGE_DIVIDETWOINT_H
#define EXAMPLE_PKG_MESSAGE_DIVIDETWOINT_H

#include <ros/service_traits.h>


#include <example_pkg/divideTwoIntRequest.h>
#include <example_pkg/divideTwoIntResponse.h>


namespace example_pkg
{

struct divideTwoInt
{

typedef divideTwoIntRequest Request;
typedef divideTwoIntResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct divideTwoInt
} // namespace example_pkg


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::example_pkg::divideTwoInt > {
  static const char* value()
  {
    return "3a24c106a3d467da7d04bd8ae94af9ac";
  }

  static const char* value(const ::example_pkg::divideTwoInt&) { return value(); }
};

template<>
struct DataType< ::example_pkg::divideTwoInt > {
  static const char* value()
  {
    return "example_pkg/divideTwoInt";
  }

  static const char* value(const ::example_pkg::divideTwoInt&) { return value(); }
};


// service_traits::MD5Sum< ::example_pkg::divideTwoIntRequest> should match
// service_traits::MD5Sum< ::example_pkg::divideTwoInt >
template<>
struct MD5Sum< ::example_pkg::divideTwoIntRequest>
{
  static const char* value()
  {
    return MD5Sum< ::example_pkg::divideTwoInt >::value();
  }
  static const char* value(const ::example_pkg::divideTwoIntRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_pkg::divideTwoIntRequest> should match
// service_traits::DataType< ::example_pkg::divideTwoInt >
template<>
struct DataType< ::example_pkg::divideTwoIntRequest>
{
  static const char* value()
  {
    return DataType< ::example_pkg::divideTwoInt >::value();
  }
  static const char* value(const ::example_pkg::divideTwoIntRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::example_pkg::divideTwoIntResponse> should match
// service_traits::MD5Sum< ::example_pkg::divideTwoInt >
template<>
struct MD5Sum< ::example_pkg::divideTwoIntResponse>
{
  static const char* value()
  {
    return MD5Sum< ::example_pkg::divideTwoInt >::value();
  }
  static const char* value(const ::example_pkg::divideTwoIntResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::example_pkg::divideTwoIntResponse> should match
// service_traits::DataType< ::example_pkg::divideTwoInt >
template<>
struct DataType< ::example_pkg::divideTwoIntResponse>
{
  static const char* value()
  {
    return DataType< ::example_pkg::divideTwoInt >::value();
  }
  static const char* value(const ::example_pkg::divideTwoIntResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // EXAMPLE_PKG_MESSAGE_DIVIDETWOINT_H
