#!/usr/bin/env python3

import rospy
from example_pkg.srv import divideTwoInt, divideTwoIntResponse


nodeName = "node_division"
serverName = "server_division"
serverType = divideTwoInt
serverResponse = divideTwoIntResponse

def divide_two_integers(request):
    numerator = request.requested_value1
    denominator = request.requested_value2
    print("request to divide {}, {}".format(numerator, denominator))
    result = 0
    if denominator!=0:
        result = float(numerator/denominator)
    else:
        print("Invalid request!!!! resulting zero")
    return serverResponse(result)

server_handler = divide_two_integers
rospy.init_node(nodeName)
rospy.Service(serverName, serverType, server_handler)

rospy.spin()