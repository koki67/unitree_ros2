#!/bin/bash
echo "Setup unitree ros2 environment"
source /opt/ros/humble/setup.bash
export RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
export CYCLONEDDS_URI='<CycloneDDS>
				<Domain>
					<General>
						<Interfaces>
                            				<NetworkInterface name="enp97s0" priority="default" multicast="false" />
                        			</Interfaces>
						<AllowMulticast>false</AllowMulticast>
					</General>	
					<Discovery>
						<Peers>
							<Peer address="192.168.111.201"/>
						</Peers>
					</Discovery>
				</Domain>
			</CycloneDDS>'
