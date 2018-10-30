variable "delimiter" {
  description = "Delimiter to be used between `name`, `namespaces`, `attributes`, etc."
  type        = "string"
  default     = "-"
}
 
variable "bu" {
  description = "Business unit (ex: `Investor(INV)`, `Advisor(ADV)`, Homeoffice(HOO)` )"
  type        = "string"
  default     = true
}
 
variable "region" {
  description = "Cloud provider region and availability zones used `us-east-01` "
  type        = "string"
  default     = true
 
}
 
variable "environment" {
  description = "Environment (ex: `dev`, `qa`, `stage`, `prod`)"
  type        = "string"
  default     = true
}
 
variable "resource" {
  description = "Cloud resource (ex: `EC2`, `S3`, `ELB`, `VPC`) "
  type        =  "string"
  default     =  true
}
 
variable "state" {
   description = "Public or Private environment"
   type        = "string"
   default     = ""
}
 
variable "appname" {
   description = "Application or Function name (ex: `tibco`, `mulesoft`) "
   type        = "string"
   default     = ""
}
 
variable "suffix" {
  description = "Unique Identifieer used for Application, server, service"
  type        = "string"
  default     = ""
}
 
variable "tags" {
  description = "A map of additional tags"
  type        = "map"
  default     = {}
}
