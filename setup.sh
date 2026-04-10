#!/bin/bash
echo "Setup unitree ros2 environment"
source /opt/ros/humble/setup.bash
export ROS_DOMAIN_ID=0
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

if [ -d /sys/class/net/wlan0 ]; then
  export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="eth0" priority="1" multicast="true" />
                            <NetworkInterface name="wlan0" priority="2" multicast="true" />
                        </Interfaces></General></Domain></CycloneDDS>'
else
  echo "wlan0 not found, using eth0 only"
  export CYCLONEDDS_URI='<CycloneDDS><Domain><General><Interfaces>
                            <NetworkInterface name="eth0" priority="1" multicast="true" />
                        </Interfaces></General></Domain></CycloneDDS>'
fi
