
---

# 🚀 Launch EC2 Instance from AWS Console

EC2 allows you to create virtual servers in the AWS cloud. 

---

# Step 1: Login to AWS Console

Open:

```
https://console.aws.amazon.com
```

Login with your AWS credentials.

---

# Step 2: Open EC2 Dashboard

1. Search **EC2** in the search bar.
2. Click **EC2 Service**
3. Select Region (Example: ap-south-1)

You will see EC2 Dashboard. 

---

# Step 3: Click Launch Instance

Click:

```
Launch Instance
```

This opens EC2 Launch Wizard. 

---

# Step 4: Name Your Instance

Example:

```
My-First-EC2
```

This helps identify the instance later. 

---

# Step 5: Choose AMI (Operating System)

Select OS:

* Amazon Linux
* Ubuntu
* Windows

Example:

```
Amazon Linux 2
```

AMI is the template used to create EC2 instances. 

---

# Step 6: Choose Instance Type

Select:

```
t2.micro (Free Tier)
```

t3.micro has:

* 1 vCPU
* 1GB RAM 

---

# Step 7: Create Key Pair

Click:

```
Create new key pair
```

Example:

```
mykey.pem
```

Download and save safely.

Key pair is required for SSH login. 

---

# Step 8: Configure Network Settings

Select:

```
Default VPC
```

Add Security Group Rules:

| Type  | Port | Source    |
| ----- | ---- | --------- |
| SSH   | 22   | My IP     |
| HTTP  | 80   | 0.0.0.0/0 |
| HTTPS | 443  | 0.0.0.0/0 |

Security group acts as firewall. 

---

# Step 9: Configure Storage

Default Storage:

```
8 GB gp2/gp3 SSD
```

Free Tier supports up to **30GB**. 

---

# Step 10: Launch Instance

Click:

```
Launch Instance
```

Instance will start in **pending state** then move to:

```
running
```



---

# Step 11: View Instance

Go to:

```
EC2 → Instances
```

You will see:

```
My-First-EC2
```

Status:

```
Running
```

---

# Step 12: Connect to EC2

Select Instance → Click:

```
Connect
```

SSH Example:

```
ssh -i mykey.pem ec2-user@public-ip
```

---

# ✅ EC2 Instance Created Successfully
