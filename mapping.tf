variable "access_key" {}
variable "secret_key" {}
varibale "region" {}
variable "name" {
  type = "list"
  default = ["core","watermark","taskrunner"]
}
variable "image_id" {
  type = "list"
  default = ["ami-0cd3dfa4e37921605"]
}
variable "user_data" {
  type = "list"
  default = ["core-data","watermark-data","taskrunner"]
}
variable "instance_type" {
  type = "list"
  default = ["t2.micro","t2.micro","t2.micro"]
}
variable "security_groups" {
  type = "list"
  default = ["sg-a13679ce"]
}
variable "launch_configuration" {
    type = "list"
  default = [ "nv-dev-core-LC-11FEB2019","nv-dev-watermark-LC-11FEB2019", "nv-dev-taskrunner-LC-11FEB2019"]
}
variable "availability_zones" {
  type = "list"
  default = ["subnet-0f8f5e43"]
}
variable "load_balancers" {
  type = "list"
  default = ["nv-dev-core-lb","nv-dev-watermark-lb","nv-dev-taskrunner-lb"]
}
variable "vpc_zone_identifier" {
type = "list"
  default = ["subnet-0f8f5e43"]
}
variable "termination_policies" {
  type = "list"
  default = ["OldestInstance"]
}
variable "max_size" {
  type = "list"
  default = ["1","1","1"]
}
variable "min_size" {
  type = "list"
  default = ["1","1","1"]
}
variable "desired_capacity" {
  type = "list"
  default = ["1","1","1"]
}

