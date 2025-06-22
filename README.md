# handy_mapping

# setup
```bash
cd colcon_ws/src
git clone https://github.com/hrjp/handy_mapping.git
./handy_mapping/setup.sh
```

# rosbag record
```bash
ros2 launch handy_mapping sensor_view.launch.xml
```
```bash
cd rosbag_dir
ros2 bag record /velodyne_points /imu /tf_static
```

# generate map
ros2 run glim_ros glim_rosbag rosbag2_2025_06_22-08_02_32_0.mcap --ros-args -p config_path:=/home/colcon_ws/src/handy_mapping/config/glim
