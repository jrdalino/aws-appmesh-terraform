# App Mesh
output "aws_appmesh_mesh_id" {
  value       = "${aws_appmesh_mesh.this.id}"
  description = "The ID of the service mesh."
}

output "aws_appmesh_mesh_arn" {
  value       = "${aws_appmesh_mesh.this.arn}"
  description = "The ARN of the service mesh."
}

output "aws_appmesh_mesh_created_date" {
  value       = "${aws_appmesh_mesh.this.created_date}"
  description = "The creation date of the service mesh."
}

output "aws_appmesh_mesh_last_updated_date" {
  value       = "${aws_appmesh_mesh.this.last_updated_date}"
  description = "The last update date of the service mesh."
}

# Virtual Service
output "aws_appmesh_virtual_service_id" {
  value       = "${aws_appmesh_virtual_service.this.id}"
  description = "The ID of the virtual service."
}

output "aws_appmesh_virtual_service_arn" {
  value       = "${aws_appmesh_virtual_service.this.arn}"
  description = "The ARN of the virtual service."
}

output "aws_appmesh_virtual_service_created_date" {
  value       = "${aws_appmesh_virtual_service.this.created_date}"
  description = "The creation date of the virtual service."
}

output "aws_appmesh_virtual_service_last_updated_date" {
  value       = "${aws_appmesh_virtual_service.this.last_updated_date}"
  description = "The last update date of the virtual service."
}

# Virtual Router
output "aws_appmesh_virtual_router_id" {
  value       = "${aws_appmesh_virtual_router.this.id}"
  description = "The ID of the virtual router."
}

output "aws_appmesh_virtual_router_arn" {
  value       = "${aws_appmesh_virtual_router.this.arn}"
  description = "The ARN of the virtual router."
}

output "aws_appmesh_virtual_router_created_date" {
  value       = "${aws_appmesh_virtual_router.this.created_date}"
  description = "The creation date of the virtual router."
}

output "aws_appmesh_virtual_router_last_updated_date" {
  value       = "${aws_appmesh_virtual_router.this.last_updated_date}"
  description = "The last update date of the virtual router."
}

# Virtual Node
output "aws_appmesh_virtual_node_id" {
  value       = "${aws_appmesh_virtual_node.this.id}"
  description = "The ID of the virtual node."
}

output "aws_appmesh_virtual_node_arn" {
  value       = "${aws_appmesh_virtual_node.this.arn}"
  description = "The ARN of the virtual node."
}

output "aws_appmesh_virtual_node_created_date" {
  value       = "${aws_appmesh_virtual_node.this.created_date}"
  description = "The creation date of the virtual node."
}

output "aws_appmesh_virtual_node_last_updated_date" {
  value       = "${aws_appmesh_virtual_node.this.last_updated_date}"
  description = "The last update date of the virtual node."
}

# Virtual Route
output "aws_appmesh_route_id" {
  value       = "${aws_appmesh_route.this.id}"
  description = "The ID of the route."
}

output "aws_appmesh_route_arn" {
  value       = "${aws_appmesh_route.this.arn}"
  description = "The ARN of the route."
}

output "aws_appmesh_route_created_date" {
  value       = "${aws_appmesh_route.this.created_date}"
  description = "The creation date of the route."
}

output "aws_appmesh_route_last_updated_date" {
  value       = "${aws_appmesh_route.this.last_updated_date}"
  description = "The last update date of the route."
}