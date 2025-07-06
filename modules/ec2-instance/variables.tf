variable "name" {
  description     = "The name for the EC2 instance and all resources."
  type            = string
  default         = "sample-app-tofu"
}

variable "ec2_type" {
  description     = "The type of EC2 instance"
  type            = string
  default         = "t2.micro"
  validation {
    condition     = contains(["t2.micro", "t2.small"], var.ec2_type)
    error_message = "ec2_type must be either 't2.micro' or 't2.small'."
  }
}
