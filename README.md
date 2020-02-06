## Get Data and Run

    wget http://db3.ertl.jp/autoware/sample_data/sample_moriyama_data.tar.gz && tar zxfv sample_moriyama_data.tar.gz
    wget http://db3.ertl.jp/autoware/sample_data/sample_moriyama_150324.tar.gz && tar zxfv sample_moriyama_150324.tar.gz    
    ./run.sh # run docerk container
    
    # in container
    cd ~/Autoware
    source install/setup.bash
    roslaunch runtime_manager runtime_manager.launch

    # in runtime_manager
    # rosbag : /home/autoware/.autoware/sample_moriyama_150324.bag
    # map : /home/autoware/Autoware/src/autoware/documentation/autoware_quickstart_examples/launch/rosbag_demo/my_map.launch
    # rviz : /home/autoware/Autoware/src/autoware/documentation/autoware_quickstart_examples/launch/rosbag_demo/default.rviz


## Reference

- https://ai4sig.org/2018/07/docker-for-autoware/
- https://gitlab.com/autowarefoundation/autoware.ai/autoware/-/wikis/ROSBAG-Demo
