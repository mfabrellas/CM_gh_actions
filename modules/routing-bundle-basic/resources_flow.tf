#Resource to create example Inbound Call Flow in genesys cloud
resource "genesyscloud_flow" "RoutingExample" {
  filepath = "${path.module}/example/RoutingExample.yaml"
  substitutions = {
    example_flow_name = var.example_flow_name
    division = var.division
    default_language = var.default_language
    
    #call common module
    routing_module_name = var.common_module_name1
    one2one_module_name = var.common_module_name2
    poolattention_module_name = var.common_module_name3
  }
  depends_on = [
    genesyscloud_flow.FirstRoutingModuleBasic,
    genesyscloud_flow.RoutingOnetoOneModuleBasic,
    genesyscloud_flow.RoutingPoolAttentionModuleBasic
  ]
}


#Resource to create Common Module Flow in genesys cloud
resource "genesyscloud_flow" "FirstRoutingModuleBasic" {
  filepath = "${path.module}/commonmodules/FirstRoutingModuleBasic.yaml"
  substitutions = {
    common_module_name = var.common_module_name1
    division = var.division
    default_language = var.default_language
  }
}
#Resource to create Common Module Flow in genesys cloud
resource "genesyscloud_flow" "RoutingOnetoOneModuleBasic" {
  filepath = "${path.module}/commonmodules/RoutingOnetoOneModuleBasic.yaml"
  substitutions = {
    common_module_name = var.common_module_name2
    division = var.division
    default_language = var.default_language

    queue1_name = var.queue1_name
    queue2_name = var.queue2_name
    queue1_flow1_name = var.queue1_flow1
    queue1_flow2_name = var.queue1_flow2
    queue2_flow1_name = var.queue2_flow1
    queue2_flow2_name = var.queue2_flow2
  }
  depends_on = [
    genesyscloud_routing_queue.Queue1_AgentsOnetoOne,
    genesyscloud_routing_queue.Queue2_PoolAttention,
    genesyscloud_flow.Q1F1_OneToOne_Sales,
    genesyscloud_flow.Q1F2_OneToOne_NoSales,
    genesyscloud_flow.Q2F1_PoolAtt_Sales,
    genesyscloud_flow.Q2F2_PoolAtt_NoSales
  ]
}
#Resource to create Common Module Flow in genesys cloud
resource "genesyscloud_flow" "RoutingPoolAttentionModuleBasic" {
  filepath = "${path.module}/commonmodules/RoutingPoolAttentionModuleBasic.yaml"
  substitutions = {
    common_module_name = var.common_module_name3
    division = var.division
    default_language = var.default_language

    queue2_name = var.queue2_name
    queue2_flow1_name = var.queue2_flow1
    queue2_flow2_name = var.queue2_flow2
  }
  depends_on = [
    genesyscloud_routing_queue.Queue2_PoolAttention,
    genesyscloud_flow.Q2F1_PoolAtt_Sales,
    genesyscloud_flow.Q2F2_PoolAtt_NoSales
  ]
}


#Resource to create PoolAttention In-Queue Flow in genesys cloud
resource "genesyscloud_flow" "Q1F1_OneToOne_Sales" {
  filepath = "${path.module}/queueflows/Q1F1_OneToOne_Sales.yaml"
  substitutions = {
    queue_flow_name = var.queue1_flow1
    division = var.division
    default_language = var.default_language

    queue2_name = var.queue2_name
    queue2_flow1_name = var.queue2_flow1
  }
  depends_on = [
    genesyscloud_routing_queue.Queue2_PoolAttention,
    genesyscloud_flow.Q2F1_PoolAtt_Sales
  ]
}
#Resource to create PoolAttention In-Queue Flow in genesys cloud
resource "genesyscloud_flow" "Q1F2_OneToOne_NoSales" {
  filepath = "${path.module}/queueflows/Q1F2_OneToOne_NoSales.yaml"
  substitutions = {
    queue_flow_name = var.queue1_flow2
    division = var.division
    default_language = var.default_language

    queue2_name = var.queue2_name
    queue2_flow2_name = var.queue2_flow2
  }
  depends_on = [
    genesyscloud_routing_queue.Queue2_PoolAttention,
    genesyscloud_flow.Q2F2_PoolAtt_NoSales
  ]
}
#Resource to create PoolAttention In-Queue Flow in genesys cloud
resource "genesyscloud_flow" "Q2F1_PoolAtt_Sales" {
  filepath = "${path.module}/queueflows/Q2F1_PoolAtt_Sales.yaml"
  substitutions = {
    queue_flow_name = var.queue2_flow1
    division = var.division
    default_language = var.default_language
  } 
}
#Resource to create PoolAttention In-Queue Flow in genesys cloud
resource "genesyscloud_flow" "Q2F2_PoolAtt_NoSales" {
  filepath = "${path.module}/queueflows/Q2F2_PoolAtt_NoSales.yaml"
  substitutions = {
    queue_flow_name = var.queue2_flow2
    division = var.division
    default_language = var.default_language
  }
}







