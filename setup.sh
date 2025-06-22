#! /bin/sh

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# glim
curl -s https://koide3.github.io/ppa/setup_ppa.sh | sudo bash
sudo apt update
sudo apt install -y libiridescence-dev libboost-all-dev libglfw3-dev libmetis-dev
sudo apt install -y libgtsam-points-dev
#sudo apt install -y libgtsam-points-cuda12.6-dev
sudo apt install -y ros-jazzy-glim-ros
#sudo apt install -y ros-jazzy-glim-ros-cuda12.6

# velodyne
sudo apt install -y ros-$ROS_DISTRO-velodyne 

# witmotion
sudo apt-get install libqt5serialport5-dev
cd "$SCRIPT_DIR/.."
git clone -b ros2 --recursive https://github.com/ElettraSciComp/witmotion_IMU_ros.git witmotion_ros
cd ..
colcon build --symlink-install
source install/setup.sh