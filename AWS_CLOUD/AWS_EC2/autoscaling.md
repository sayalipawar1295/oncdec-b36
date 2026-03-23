# 🚀 Auto Scaling in AWS

Scaling is an important part of system design.  
It ensures that the application can handle increased load without performance issues.

Scaling means increasing or decreasing resources based on demand.

---

## 🔹 Types of Scaling

### 1. Vertical Scaling
- Increase the power of a single server  
- Example: Adding more CPU or RAM  

### 2. Horizontal Scaling
- Add or remove servers  
- Example: Adding multiple EC2 instances  

=> In cloud environments, horizontal scaling is more commonly used.

---

#  What is Auto Scaling?

Auto Scaling is a feature in AWS that automatically adjusts the number of EC2 instances based on demand.

It increases resources when traffic is high and decreases them when traffic is low.

---

### 🔹 Key Points

- Automatically adds or removes EC2 instances  
- Maintains application performance  
- Reduces manual effort  
- Helps in cost optimization  
- During high traffic → new instances are launched  
- During low traffic → extra instances are terminated  
- Works with Load Balancer to distribute traffic  

---

#  Steps to Configure Auto Scaling

---

## 🔹 Step 1: Create Launch Template

A Launch Template defines how EC2 instances should be created.

It includes:
- AMI (OS)
- Instance type
- Key pair
- Security group

<img src="https://github.com/user-attachments/assets/fcef89ac-b057-474c-a127-ac73299c3a0f" />

---

## 🔹 Step 2: Create Auto Scaling Group (ASG)

### Select Launch Template and Name
<img src="https://github.com/user-attachments/assets/a9bfe17c-38ca-49b6-a4f4-3ea22a47102a" />

---

### Configure Network (Select AZs)
<img src="https://github.com/user-attachments/assets/7e8385f7-fd6d-470f-a737-7a71b285fdaf" />

---

### Integration with Other Services
- Can be skipped if not required

<img src="https://github.com/user-attachments/assets/da57a62e-083b-4198-a00c-0947056271e7" />

---

### Configure Group Size and Scaling

- **Desired capacity** → number of instances to run  
- **Minimum capacity** → minimum instances always running  
- **Maximum capacity** → maximum instances allowed  

<img src="https://github.com/user-attachments/assets/2afb1cab-eb39-4f11-9818-6488e1f1d156" />
<img src="https://github.com/user-attachments/assets/88bf2dcb-2f6c-43c8-8091-0a9d2073db58" />
<img src="https://github.com/user-attachments/assets/f99d0375-3120-46ec-9b83-bedc6930c0a6" />

---

### Auto Scaling Group Created

<img src="https://github.com/user-attachments/assets/13f8b639-4e32-4e96-a5ae-5f6825eedbd3" />
<img src="https://github.com/user-attachments/assets/d043c9db-6819-4fca-a154-96880e88f508" />

---

# 🧪 Testing Auto Scaling

To test scaling, we increase CPU usage manually.

---

## 🔹 Step 1: Install Stress Tool

```bash
sudo yum install stress -y
````
