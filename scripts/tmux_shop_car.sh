#!/usr/bin/env zsh

# set var
session_name="shop_car"
project_dir="/home/hdh5/ros_all/ros_project"

# source env
source_file="source /home/hdh5/ros_all/python3_ws/devel/setup.zsh && source /home/hdh5/ros_all/ros_project/devel/setup.zsh "

tmux kill-session -t $session_name
tmux new-session -s shop_car -d -E
tmux send-keys -t shop_car "cd ${project_dir}" C-m
tmux send-keys -t shop_car "tmux split-window -h -p 45" C-m
tmux send-keys -t shop_car "tmux select-pane -t 1" C-m

tmux send-keys -t shop_car "cd ${project_dir}" C-m
tmux send-keys -t shop_car "tmux split-window -v -p 80" C-m
tmux send-keys -t shop_car "tmux select-pane -t 2" C-m

tmux send-keys -t shop_car "cd ${project_dir}" C-m
tmux send-keys -t shop_car "tmux split-window -v -p 75" C-m
tmux send-keys -t shop_car "tmux select-pane -t 3" C-m

tmux send-keys -t shop_car "cd ${project_dir}" C-m
tmux send-keys -t shop_car "tmux split-window -v -p 66" C-m

tmux send-keys -t shop_car "tmux select-pane -t 0" C-m
tmux send-keys -t shop_car "clear" C-m
sleep 1.4
tmux send-keys -t shop_car:0.0 "$source_file" C-m
tmux send-keys -t shop_car:0.1 "$source_file" C-m
tmux send-keys -t shop_car:0.2 "$source_file" C-m
tmux send-keys -t shop_car:0.3 "$source_file" C-m
tmux send-keys -t shop_car:0.4 "$source_file" C-m
tmux attach -t $session_name
