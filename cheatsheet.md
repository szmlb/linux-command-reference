# Linux Command Cheatsheet

A quick, readable reference for the most frequent and popular Linux commands.

## File & Directory Management

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `ls` | List directory contents | `ls -la` (list all files with details) |
| `cd` | Change directory | `cd /var/log` (go to /var/log) |
| `pwd` | Print working directory | `pwd` (show current path) |
| `mkdir` | Create a new directory | `mkdir -p my/new/dir` (create parent directories if needed) |
| `rm` | Remove files or directories | `rm -rf dir_name` (force remove directory recursively) |
| `cp` | Copy files or directories | `cp -r src_dir dest_dir` (copy directory recursively) |
| `mv` | Move or rename files/directories | `mv old.txt new.txt` (rename file) |
| `find` | Search for files in a directory hierarchy | `find . -name "*.txt"` (find all text files in current dir) |
| `tar` | Archive files | `tar -czvf archive.tar.gz folder/` (compress folder) |

## Text & File Processing

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `cat` | Concatenate files and print on standard output | `cat file.txt` (print file content) |
| `less` | View file content one page at a time | `less huge_log.txt` (read large file) |
| `head` | Output the first part of files | `head -n 10 file.txt` (show first 10 lines) |
| `tail` | Output the last part of files | `tail -f /var/log/syslog` (follow log updates in real-time) |
| `grep` | Search text using patterns | `grep -i "error" log.txt` (case-insensitive search for "error") |
| `awk` | Pattern scanning and processing language | `awk '{print $1}' file.txt` (print the first column) |
| `sed` | Stream editor for filtering and transforming text | `sed 's/foo/bar/g' file.txt` (replace 'foo' with 'bar') |
| `wc` | Print newline, word, and byte counts | `wc -l file.txt` (count lines in a file) |

## System Information & Monitoring

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `top` | Display Linux processes | `top` (interactive process viewer) |
| `htop` | Interactive process viewer (often needs install) | `htop` (better visual process viewer) |
| `ps` | Report a snapshot of current processes | `ps aux` (show all running processes) |
| `kill` | Send a signal to a process | `kill -9 1234` (force kill process with PID 1234) |
| `df` | Report file system disk space usage | `df -h` (human-readable format) |
| `du` | Estimate file space usage | `du -sh folder/` (get total size of folder) |
| `free` | Display amount of free and used memory | `free -h` (human-readable memory stats) |
| `uname` | Print system information | `uname -a` (all system info) |

## Networking

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `ping` | Send ICMP ECHO_REQUEST to network hosts | `ping google.com` (check connectivity) |
| `curl` | Transfer a URL | `curl -O http://example.com/file.zip` (download file) |
| `wget` | The non-interactive network downloader | `wget http://example.com/file.zip` (download file) |
| `ip` | Show / manipulate routing, network devices | `ip a` (show all IP addresses) |
| `netstat` | Print network connections, routing tables | `netstat -tulpn` (show listening ports) |
| `ssh` | OpenSSH SSH client (remote login program) | `ssh user@192.168.1.10` (connect to remote host) |

## Permissions & Ownership

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `chmod` | Change file mode bits (permissions) | `chmod +x script.sh` (make executable) |
| `chown` | Change file owner and group | `chown user:group file.txt` (change owner and group) |
| `sudo` | Execute a command as another user (usually root) | `sudo apt update` (run with root privileges) |

## ROS 2 (Robot Operating System)

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `ros2 run` | Run an executable from a package | `ros2 run demo_nodes_cpp talker` |
| `ros2 launch` | Run a launch file | `ros2 launch demo_nodes_cpp talker_listener.launch.py` |
| `ros2 node` | Various node related sub-commands | `ros2 node list` (list running nodes) |
| `ros2 topic` | Various topic related sub-commands | `ros2 topic echo /chatter` (print topic data) |
| `ros2 service` | Various service related sub-commands | `ros2 service list` (list available services) |
| `ros2 param` | Various param related sub-commands | `ros2 param list` (list parameters for nodes) |
| `ros2 pkg` | Various package related sub-commands | `ros2 pkg create my_package` (create new pkg) |
| `colcon build` | Build the workspace | `colcon build --symlink-install` |
| `rosdep` | Install system dependencies | `rosdep install -i --from-path src --rosdistro humble -y` |

## Docker & Containers

| Command | Description | Common Usage Example |
| :--- | :--- | :--- |
| `docker run` | Create and run a new container from an image | `docker run -d -p 8080:80 nginx` |
| `docker ps` | List containers | `docker ps -a` (list all, including stopped) |
| `docker build` | Build an image from a Dockerfile | `docker build -t my-app:latest .` |
| `docker images` | List local images | `docker images` |
| `docker exec` | Run a command in a running container | `docker exec -it <container> bash` |
| `docker logs` | Fetch the logs of a container | `docker logs -f <container>` (stream logs) |
| `docker stop` / `start` | Stop or start a container | `docker stop <container>` |
| `docker rm` | Remove one or more containers | `docker rm -f <container>` (force remove) |
| `docker rmi` | Remove one or more images | `docker rmi <image>` |
| `docker compose up` | Build, create, start, attach containers | `docker compose up -d` (detached mode) |
| `docker compose down`| Stop and remove containers/networks | `docker compose down -v` (remove volumes too) |
