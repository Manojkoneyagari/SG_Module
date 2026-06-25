variable "project" {
  type = string

}

variable "environment" {
  type = string

}


variable "instances" {
    type = List 
    default = []
}