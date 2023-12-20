FROM ros:foxy-ros-base-focal

# Add the ROS GPG key
RUN apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-keys AD19BAB3CBF125EA

# Update and install necessary packages
RUN apt-get update && apt-get install -y --no-install-recommends \
ros-foxy-desktop \
lxterminal \
git \
&& rm -rf /var/lib/apt/lists/*

# Clone and build Livox SDK
RUN git clone --branch v1.2.4 --depth 1 https://github.com/Livox-SDK/Livox-SDK2.git && \
cd Livox-SDK2 && \
mkdir build && \
cd build && \
cmake .. && make -j && \
make install

# Clone and build Livox ROS Driver
RUN mkdir -p ws_livox/src && \
git clone -b 1.2.3 https://github.com/Livox-SDK/livox_ros_driver2.git ws_livox/src/livox_ros_driver2

RUN mv ws_livox/src/livox_ros_driver2/package_ROS2.xml ws_livox/src/livox_ros_driver2/package.xml 
RUN /bin/bash -c '. /opt/ros/foxy/setup.sh; cd ws_livox; colcon build --packages-select livox_ros_driver2'
