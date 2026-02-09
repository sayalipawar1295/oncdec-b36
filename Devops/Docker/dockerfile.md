# Dockerfile example

````
FROM amazonlinux
RUN  yum update -y
RUN  yum install httpd -y
COPY index.html /var/www/html/
CMD ["httpd", "-D", "FOREGROUND"]
````
# how to build docker image
````
docker build -t image1 .
````
# how to run docker cont
````
docker run -itd --name c1 -p 80:80 image1
````
