#!/usr/bin/env python3


import rospy
from std_msgs.msg import Float32, String

"""
1. rospy is the core ros library containing functions for defining structures like nodes, services, pub, sub.
2. Every pusblisher or subscriber needs to have the type of data ( data referred as message here) defined while initialisation.
   messages like String, Int**, Float** are standard messages. While messages related to spatial information are known as geometry messages.
   Custom messages can be defined entirely new or also using combination of existing messages 
"""

"""
Idea here is to subscribe and display data being published by publisher node
Run roscore and node_publisher before running this node
"""
def subscriptionCallback(subscribedData, publishDetails):

    publishing_entity, publishing_rate = publishDetails[0], publishDetails[1]
    dataValue = subscribedData.data
    processed_data = str(dataValue*5)
    rospy.loginfo("newly published data value is: {}".format(processed_data))
    publishing_rate.sleep()


nodeName = "nodeSubPub"
topicToSubscribe = "topicPub" #topic published by earlier node is subscriber here
newtopicToPublish = "topicNewPublish" #processed data is published to a new topic
frequencyOfSubscription = 10
frequencyOfPublish = frequencyOfSubscription #should be equal since we subscribe only when we need to publish

rospy.init_node(nodeName)   #Node should be initialised before calling rospy functions
# subscribing_rate = rospy.Rate(frequencyOfSubscription) #Redundant
publishing_rate = rospy.Rate(frequencyOfPublish)

publishing_entity = rospy.Publisher(newtopicToPublish, String, queue_size=5)
subscribing_entity = rospy.Subscriber(topicToSubscribe, Float32, callback=subscriptionCallback, callback_args=[publishing_entity, publishing_rate])

rospy.spin()