
---

# 🌐 VPC (Virtual Private Cloud)

A VPC is a virtual network in AWS where you can launch and manage your resources in a secure environment.

It allows you to control IP ranges, subnets, routing, and internet access.

---

## 📌 Create VPC

- Provide a name  
- Define CIDR block  

Example:
```

192.168.0.0/16

```

This CIDR block defines the IP range for the VPC.

<img src="https://github.com/user-attachments/assets/eabe7282-9413-4bc7-8d3c-434e5c7b7183" />

---

## 📌 Create Subnet

A subnet is a smaller network inside a VPC.

### Steps:

- Select VPC  
- Provide subnet name  
- Select Availability Zone (AZ)  
- Define CIDR block  

To make it public:
- Go to subnet → Actions → Edit settings  
- Enable auto-assign public IP  

<img src="https://github.com/user-attachments/assets/0284cfb2-a472-46a0-9efb-2f801fd444c5" />
<img src="https://github.com/user-attachments/assets/e443c8a0-2fba-454e-9770-556920c23f25" />
<img src="https://github.com/user-attachments/assets/3414a058-7acb-4921-b5f4-fd88e17be75b" />
<img src="https://github.com/user-attachments/assets/7ee00f49-5ce1-41a2-accb-1869fe770a0c" />
<img src="https://github.com/user-attachments/assets/a97ce1d2-a93c-4787-b288-672d5c4896b4" />
<img src="https://github.com/user-attachments/assets/5ccf90e2-9bb7-47fb-8001-f534c198124a" />

---

## 📌 Internet Gateway (IGW)

An Internet Gateway allows resources in a public subnet to access the internet.

### Steps:

- Create Internet Gateway  
- Attach it to the VPC  

<img src="https://github.com/user-attachments/assets/7359a20a-006f-4dd8-9ecc-4e13d1e59999" />
<img src="https://github.com/user-attachments/assets/3c51cdb3-0576-4685-b6fb-0f529728f070" />

---

## 📌 NAT Gateway

A NAT Gateway allows instances in a private subnet to access the internet without exposing them publicly.

<img src="https://github.com/user-attachments/assets/8de67d75-4edd-498d-93d8-f3bbc6e75798" />
<img src="https://github.com/user-attachments/assets/b92eff56-fda6-458d-9526-937a82b399ec" />

---

## 📌 Route Table (Public Subnet)

Defines how traffic flows from the subnet.

### Steps:

- Create route table  
- Associate with public subnet  
- Add route:
```

0.0.0.0/0 → Internet Gateway

```

<img src="https://github.com/user-attachments/assets/7b35891d-c90b-4491-ac02-fb1e0e4ade12" />
<img src="https://github.com/user-attachments/assets/9c9ccd75-a6e5-483e-8c28-e5f3b9c5df9c" />
<img src="https://github.com/user-attachments/assets/11f61066-fba4-4480-b7b2-6e6415c07b0e" />

---

## 📌 Route Table (Private Subnet)

### Steps:

- Create route table  
- Associate with private subnet  
- Add route:
```

0.0.0.0/0 → NAT Gateway

```

<img src="https://github.com/user-attachments/assets/b937f37d-a7ae-4c5b-aeaf-9892523876cc" />
<img src="https://github.com/user-attachments/assets/c2fad372-bea3-4aad-84f3-d75a9704cc27" />
<img src="https://github.com/user-attachments/assets/5b928be8-405e-4927-bd94-0a2a13a0ac5d" />

---

## 📊 VPC Resource Map

Shows complete architecture of VPC components.

<img src="https://github.com/user-attachments/assets/afecd120-4fe3-4e04-8502-1f0f30d45711" />

---

## 🔐 Bastion Host (Jump Server)

Instances in a private subnet cannot be accessed directly because they do not have a public IP.

To access them:

- Launch a public EC2 instance (Bastion Host)  
- SSH into the bastion  
- From bastion, connect to private instance  

---

### Requirement:

- Private instance key pair must be available on bastion host  

<img src="https://github.com/user-attachments/assets/fefe3565-898b-4d32-bd72-1147cf8f7120" />
<img src="https://github.com/user-attachments/assets/f5bf9c89-6816-4dee-9725-ebc5f1b19451" />
<img src="https://github.com/user-attachments/assets/8553b7c5-f2f7-4bef-bdd6-87ad7dabaf07" />
<img src="https://github.com/user-attachments/assets/ea60df92-a6f5-4db0-87e6-f3e330dd5642" />
<img src="https://github.com/user-attachments/assets/c6b84e30-a9b7-48d9-9f0b-4d2fcaa067b9" />

---




