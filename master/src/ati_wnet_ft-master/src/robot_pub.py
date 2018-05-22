#!/usr/bin/env python
import socket
import rospy
from geometry_msgs.msg import Wrench
import time

OUTPUT_NAMES = ['Time', 'T1FX', 'T1FY', 'T1FZ', 'T1TX', 'T1TY', 'T1TZ']

def talker():
    pub = rospy.Publisher('ati_ft_data', Wrench, queue_size=10)
    rospy.init_node('ati_ft', anonymous=True)

    #Open the socket to receive F/T data
    HOST = '192.168.99.120'    # The remote host
    PORT = 49389              # The same port as used by the server
    input_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    time.sleep(2.0)
    input_socket.connect((HOST, PORT))
    input_fhandle = input_socket.makefile('r')

    #Identify the columns we want to output
    header = input_fhandle.readline()
    header = header.split(',')
    header = [column.strip() for column in header]
    output_cols = [header.index(name) for name in OUTPUT_NAMES]
    print(header)
    print(output_cols)

    #Publish data to the topic
    while not rospy.is_shutdown():
        input_str = input_fhandle.readline()
        input_str = input_str.split(',')
        input_str = [column.strip() for column in input_str]
        try:
            wrench_obj = Wrench()
            wrench_obj.force.x = float(input_str[output_cols[1]])
            wrench_obj.force.y = float(input_str[output_cols[2]])
            wrench_obj.force.z = float(input_str[output_cols[3]])
            wrench_obj.torque.x = float(input_str[output_cols[4]])
            wrench_obj.torque.y = float(input_str[output_cols[5]])
            wrench_obj.torque.z = float(input_str[output_cols[6]])
            pub.publish(wrench_obj)
        except(Error):
            print('An unknown read error occurred - discarding this F/T sample')

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
