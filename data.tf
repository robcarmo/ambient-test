variable "vpc_id" {
  default = "vpc-0286e1c1166e8d78c"
}

variable "subnet_ids" {
  type    = list(string)
  default = [
    "subnet-02289a8045ceb7296", 
    "subnet-041530881b56eca1e"
  ]
}
