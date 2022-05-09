#!/usr/bin/env python3


import rospy
from std_msgs.msg import Float32

"""
1. rospy is the core ros library containing functions for defining structures like nodes, services, pub, sub.
2. Every pusblisher or subscriber needs to have the type of data ( data referred as message here) defined while initialisation.
   messages like String, Int**, Float** are standard messages. While messages related to spatial information are known as geometry messages.
   Custom messages can be defined entirely new or also using combination of existing messages 
"""

nodeName = "nodePub"
topicToPublish = "topicPub"
frequencyOfPublish = 25

rospy.init_node(nodeName)
publishing_entity = rospy.Publisher(topicToPublish, Float32, queue_size=5)
publishing_rate = rospy.Rate(frequencyOfPublish)

display = True

"""
Idea here is to publish number starting from Zero, incrementing by 1 continuously
"""
data_to_publish = 0.0 

try:
    while not rospy.is_shutdown():
        publishing_entity.publish(data_to_publish)
        if display:
            rospy.loginfo("data published is: {}".format(data_to_publish))
        data_to_publish += 1.0
        publishing_rate.sleep()

except rospy.ROSInterruptException as e:
    print("Publishing Interrupted")
else:
    pass
finally:
    print("ros publisher node closed")