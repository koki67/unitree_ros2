#!/bin/bash
echo "Setup unitree ros2 environment"
source /opt/ros/humble/setup.bash
export ROS_DOMAIN_ID=0
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="enp97s0" priority="default" multicast="default" />
                        </Interfaces></General></Domain></CycloneDDS>'
