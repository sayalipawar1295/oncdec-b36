## 📌 What is a Load Balancer?

A Load Balancer is a service that distributes incoming traffic across multiple servers.

Instead of sending all requests to a single server, it ensures that traffic is shared, improving performance and availability.

---


- Prevents a single server from getting overloaded  
- Improves application availability  
- Helps handle high traffic smoothly  
- Automatically redirects traffic if a server fails  
- Users access the application through the Load Balancer  
- Traffic is distributed to multiple EC2 instances  
- If one instance fails, traffic is routed to healthy instances  
- Works together with Auto Scaling for dynamic scaling  

---

## ⚙️ Types of Load Balancer 



### 🔹 1. Application Load Balancer (ALB)

- Works at Layer 7 (HTTP/HTTPS)  
- Can route traffic based on:
  - URL path (`/api`, `/login`)  
  - Hostname (`api.demo.com`)  

**Used for:**
- Web applications  
- Microservices architecture  

---

### 🔹 2. Network Load Balancer (NLB)

- Works at Layer 4 (TCP/UDP)  
- Very high performance and low latency  

**Used for:**
- High-performance applications  
- Real-time systems  

---

### 🔹 3. Gateway Load Balancer (GLB)

- Used for security appliances  

**Used for:**
- Firewalls  
- Network security tools  

---

---

## ❤️ Health Checks

Load Balancer continuously checks if servers are healthy.

- If a server is unhealthy → traffic is not sent to it  
- Ensures only working servers handle requests  

---


### script for applicationn load balancer with path based routing
````
#!/bin/bash
sudo -i
yum install httpd -y
systemctl start httpd 
yum install git -y 
cd /root
git clone https://github.com/abhipraydhoble/templates.git
cd templates/cafe
mv * /var/www/html/
cd /var/www/html/
mkdir tea coffee
cd /root/templates
mv  coffee/* /var/www/html/coffee/
mv  tea/* /var/www/html/tea/
````
