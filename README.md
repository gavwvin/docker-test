# docker-test
Demo showing creation of local Windows Web server and Local SQL server

# Setup

## First-Time Setup
1. Install docker desktop: https://www.docker.com/products/docker-desktop/.
2. Once docker is running, find the docker "Whale" icon in the tray, right-click and press "Use windows containers..."
![image](https://github.com/gavwvin/docker-test/assets/5271011/feb01711-c74e-46e0-84c6-6bdecfd76ab4)
3. Enable Hyper-V: https://learn.microsoft.com/en-us/virtualization/hyper-v-on-windows/quick-start/enable-hyper-v

## Running a project
1. Clone this repository
2. Open a terminal in the same directory and run "docker compose up --build"

This should create the Web server and Local DB server. You should see both running under "Containers" in Docker Desktop:
![image](https://github.com/gavwvin/docker-test/assets/5271011/cdbd8092-3b80-4697-9e74-788383194d4e)

Test by visiting http://localhost:8080/ - shows the products listed in the seed script
![image](https://github.com/gavwvin/docker-test/assets/5271011/a2f768d6-51e4-4deb-8790-9ff71487ed87)
