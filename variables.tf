# General
variable "aws_region" {
  type        = string
  description = "Used AWS Region."    
}

variable "aws_account" {
  type        = string
  description = "Used AWS Account."    
}

# App Mesh
variable "aws_appmesh_mesh_name" {
  type        = string
  description = "(Required) The name to use for the service mesh."    
}

# Virtual Service
variable "aws_appmesh_virtual_service_name" {
  type        = string
  description = "(Required) The name to use for the virtual service."    
}

# Virtual Router
variable "aws_appmesh_virtual_router_name" {
  type        = string
  description = "(Required) The name to use for the virtual router."    
}

variable "aws_appmesh_virtual_router_listener_port" {
  type        = string
  description = "(Required) The port used for the port mapping."    
}

# Virtual Node
variable "aws_appmesh_virtual_node_name" {
  type        = string
  description = "(Required) The name to use for the virtual node."    
}

variable "aws_appmesh_virtual_node_listener_port" {
  type        = string
  description = "(Required) The port mapping information for the listener."    
}

# Virtual Route
variable "aws_appmesh_route_name" {
  type        = string
  description = "(Required) The name to use for the route."    
}