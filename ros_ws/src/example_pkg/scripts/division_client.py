#!/usr/bin/env python3


import rospy
from example_pkg.srv import divideTwoInt


numerator = int(input("enter numerator \n"))
denominator = int(input("enter denominator \n"))

serverName = "server_division"
serverType = divideTwoInt

rospy.wait_for_service(serverName)

try:
    service_dupe = rospy.ServiceProxy(serverName, serverType) 
    result = service_dupe(numerator, denominator)
    print("the division value of two integers is: {}".format(result.response_value))
except rospy.ServiceException as e:
    print("service call failed due to {}".format(e))
