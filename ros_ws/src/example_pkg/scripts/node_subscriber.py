#!/usr/bin/env python3


import rospy
from std_msgs.msg import Float32

"""
1. rospy is the core ros library containing functions for defining structures like nodes, services, pub, sub.
2. Every pusblisher or subscriber needs to have the type of data ( data referred as message here) defined while initialisation.
   messages like String, Int**, Float** are standard messages. While messages related to spatial information are known as geometry messages.
   Custom messages can be defined entirely new or also using combination of existing messages 
"""

"""
Idea here is to subscribe and display data being published by publisher node
"""
def subscriptionCallback(publishedData, subscribing_rate):

    dataValue = publishedData.data
    rospy.loginfo("subscribed data value is: {}".format(dataValue))
    subscribing_rate.sleep()


nodeName = "nodeSub"
topicToSubscribe = "topicPub" #topic published by earlier node is subscriber here
frequencyOfSubscription = 20

rospy.init_node(nodeName)   #Node should be initialised before calling rospy functions
subscribing_rate = rospy.Rate(frequencyOfSubscription)
subscribing_entity = rospy.Subscriber(topicToSubscribe, Float32, callback=subscriptionCallback, callback_args=subscribing_rate)


rospy.spin()

