# Docker Installation:(amazon linux)
````
sudo yum update -y
sudo yum install docker -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ec2-user
newgrp docker
sudo chmod 777 /var/run/docker.sock
````
# Docker Installation:(ubuntu)
````
sudo apt update -y
sudo apt install docker.io -y
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker ubuntu
newgrp docker
sudo chmod 777 /var/run/docker.sock
````

<img width="1446" height="607" alt="image" src="https://github.com/user-attachments/assets/5d79f843-a4dc-4340-8211-faffafa44160" />
<img width="1381" height="527" alt="image" src="https://github.com/user-attachments/assets/2bde4975-35c4-407d-9d1f-df2b8ea2153c" />
<img width="1292" height="320" alt="image" src="https://github.com/user-attachments/assets/cfd6c914-aec1-439e-a9f5-3a08b6dbc924" />


