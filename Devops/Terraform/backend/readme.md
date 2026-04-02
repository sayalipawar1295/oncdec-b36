````
terraform {
  backend "s3" {
    bucket = "oncdecb36-terraform-backend"
    key = "terraform.tfstate"
    region = "ap-southeast-1"
    profile = "tf-user"
    dynamodb_table = "tf-backend-tb"
    
  }
}
````
````
terraform init
````
