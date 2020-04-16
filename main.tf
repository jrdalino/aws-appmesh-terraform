# App Mesh
resource "aws_appmesh_mesh" "this" {
  name = var.aws_appmesh_mesh_name

  spec {
    egress_filter {
      type = "ALLOW_ALL"
    }
  }

  # tags
}

# Virtual Service
resource "aws_appmesh_virtual_service" "this" {
  mesh_name = var.aws_appmesh_mesh_name
  name = var.aws_appmesh_virtual_service_name

  spec {
    provider {
      virtual_router {
        virtual_router_name = aws_appmesh_virtual_router.this.name
      }
    }
  }

  # tags

  depends_on = [aws_appmesh_mesh.this]  
}

# Virtual Router
resource "aws_appmesh_virtual_router" "this" {
  mesh_name = var.aws_appmesh_mesh_name
  name = var.aws_appmesh_virtual_router_name

  spec {
    listener {
      port_mapping {
        port = var.aws_appmesh_virtual_router_listener_port
        protocol = "http"
      }
    }
  }

  # tags

  depends_on = [aws_appmesh_mesh.this]
}

# Virtual Node
resource "aws_appmesh_virtual_node" "this" {
  mesh_name = var.aws_appmesh_mesh_name
  name = var.aws_appmesh_virtual_node_name

  spec {
    backend {
      virtual_service {
        virtual_service_name = "servicea.hosted.local"
      }
    }
 
   listener {
      port_mapping {
        port = var.aws_appmesh_virtual_node_listener_port
        protocol = "http"
      }      
      health_check {
        protocol            = "http"
        path                = "/ping"
        healthy_threshold   = 2
        unhealthy_threshold = 5
        timeout_millis      = 2000        
        interval_millis     = 15000
      }
    }    
    
    service_discovery {
      dns {
        hostname = "serviceb.hosted.local"
      }
    }
  } 

  # tags

  depends_on = [aws_appmesh_mesh.this]
}

# # Virtual Route (HTTP Routing)
# resource "aws_appmesh_route" "this" {
#   mesh_name = var.aws_appmesh_mesh_name
#   name = var.aws_appmesh_route_name
#   virtual_router_name = aws_appmesh_virtual_router.this.name

#   spec {
#     http_route {
#       match {
#           prefix = "/"
#       }
 
#       action {
#         weighted_target {
#           virtual_node = aws_appmesh_virtual_node.this.name
#           weight = 100
#         }

#         # weighted_target {
#         #   virtual_node = aws_appmesh_virtual_node.serviceb2.name
#         #   weight = 10
#         # }        
#       }
#     }
#   }

#   # tags  
# }