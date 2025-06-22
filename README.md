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
```bash
ros2 launch handy_mapping mapping.launch.xml
```
```bash
ros2 bag play BAG_FILE_PATH
```