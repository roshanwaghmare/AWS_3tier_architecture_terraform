# AWS_3tier_architecture_terraform

Infrastructure Automation | Deploying a 3-Tier Architecture in AWS Using Terraform

The three-tier architecture is the most popular implementation of a multi-tier architecture and consists of a single presentation tier, logic tier, and data tier.

It is a viable choice for software projects to be started quickly.
aws_3tier_architecture_terraform


## EC2 config for webservers:

Run below Commands on both public webservers to check the load balancer

```bash
sudo yum Install httpd -y
sudo systemctl start httpd
sudo systemctl status httpd
sudo vi /var/www/html/index.html

```

## index.html file :

```bach
<!DOCTYPE html>

<html>

<head>
	<title>
		First Web Page
	</title>
</head>

<body>
	<h1>Hello World!</h1>
	<h2>Hello World!</h2>
	<h3>Hello World!</h3>
	<h4>Hello World!</h4>
	<h5>Hello World!</h5>
	<h6>Hello World!</h6>
</body>

</html>

```

Go to Load balancer and copy the DNS name and paste it in the browser check the load for both servers


### Resources need to be created / installed :

* Custom VPC

* 2 Subnets (Public)

* 1 Subnet (Private)

* 2 EC2 Instances

* Security Group

* Elastic IP

* NAT Gateway

* Internet Gateway

* Route Table

* Application Load Balancer

* Apache Webserver

* MySQL DB

 ![Screenshot 2022-06-28 at 7 57 51 AM](https://user-images.githubusercontent.com/58227542/176078468-3847bab0-e70e-4360-b077-181315ee007c.png)
