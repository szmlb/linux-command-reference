# ROS 2 (Robot Operating System)

This document provides detailed explanations of common commands used for developing, debugging, and running ROS 2 applications.

## `ros2 run` - Run an Executable
Runs an executable from a specific ROS 2 package.

**Example:**
```bash
# ros2 run <package_name> <executable_name>
ros2 run demo_nodes_cpp talker
```

## `ros2 launch` - Run a Launch File
Launch files allow you to start up and configure a number of ROS 2 nodes simultaneously.

**Example:**
```bash
# ros2 launch <package_name> <launch_file_name>
ros2 launch demo_nodes_cpp talker_listener.launch.py
```

## `ros2 node` - Node Introspection
Nodes are the core executable entities in ROS 2. You can use this command to find information about running nodes.

**Commands:**
- `ros2 node list`: List all running nodes.
- `ros2 node info <node_name>`: See information about a specific node (subscribers, publishers, services, etc.).

**Example:**
```bash
ros2 node info /talker
```

## `ros2 topic` - Topic Introspection
Topics are named buses over which nodes exchange messages.

**Commands:**
- `ros2 topic list`: List all active topics.
- `ros2 topic list -t`: List topics along with their message types.
- `ros2 topic echo <topic_name>`: Print out the data being published to a topic to the screen.
- `ros2 topic hz <topic_name>`: Display the rate at which data is being published.
- `ros2 topic info <topic_name>`: Print information about a topic.
- `ros2 topic pub <topic_name> <msg_type> '<args>'`: Publish a message to a topic directly from the command line.

**Examples:**
```bash
ros2 topic echo /chatter
ros2 topic pub /chatter std_msgs/msg/String "{data: 'Hello ROS 2'}"
```

## `ros2 service` - Service Introspection
Services are another method of communication for nodes in ROS 2. They are based on a call-and-response model versus the publisher-subscriber model of topics.

**Commands:**
- `ros2 service list`: List all active services.
- `ros2 service type <service_name>`: Print the type of a service.
- `ros2 service call <service_name> <service_type> '<args>'`: Call a service from the command line.

**Example:**
```bash
ros2 service call /clear std_srvs/srv/Empty
```

## `ros2 param` - Parameter Management
Parameters are configuration values for a node.

**Commands:**
- `ros2 param list`: List all parameters for all running nodes.
- `ros2 param get <node_name> <parameter_name>`: Get the value of a parameter.
- `ros2 param set <node_name> <parameter_name> <value>`: Change the value of a parameter at runtime.
- `ros2 param dump <node_name>`: Dump the parameters of a node to a YAML file.

**Example:**
```bash
ros2 param get /turtlesim background_r
ros2 param set /turtlesim background_r 150
```

## `ros2 pkg` - Package Management
Used to get information about ROS 2 packages and to create new ones.

**Commands:**
- `ros2 pkg create --build-type <build_type> <package_name>`: Create a new package. Build types are usually `ament_cmake` or `ament_python`.
- `ros2 pkg list`: List all installed ROS 2 packages.
- `ros2 pkg executables <package_name>`: List all executables in a package.

**Example:**
```bash
ros2 pkg create --build-type ament_cmake my_robot_package
```

## `colcon` - Build Tool
`colcon` is the tool used to build ROS 2 workspaces. You must run it from the root of your workspace (e.g., `~/ros2_ws`).

**Commands:**
- `colcon build`: Build all packages in the workspace.
- `colcon build --packages-select <package_name>`: Build only a specific package.
- `colcon build --symlink-install`: Build and install using symlinks. This is highly recommended for Python development, as you won't need to rebuild every time you change a python script.

**Example:**
```bash
colcon build --symlink-install
```

## `rosdep` - Dependency Management
`rosdep` is a command-line tool for installing system dependencies (like apt packages) required by ROS packages.

**Example:**
```bash
# Install dependencies for all packages in the 'src' directory
rosdep install -i --from-path src --rosdistro humble -y
```
