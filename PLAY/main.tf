module "module_intent_intermediate" {
    source = "../modules/intent-bundle-intermediate"

    common_module_name = "IntentClientModuleIntermediate_${var.TF_ENV}"
    example_flow_name = "IntentBotExample_${var.TF_ENV}"
    queue_name = "modulosComunes_${var.TF_ENV}"
    division = "${var.TF_ENV}"
    default_language = "es-us"
}

module "module_routing_basic" {
    source = "../modules/routing-bundle-basic"

    #example flow
    example_flow_name = "RoutingExample_${var.TF_ENV}"

    #common module
    common_module_name1 = "RoutingModuleBasic_${var.TF_ENV}"
    common_module_name2 = "RoutingOnetoOneModuleBasic_${var.TF_ENV}"
    common_module_name3 = "RoutingPoolAttentionModuleBasic_${var.TF_ENV}"

    #queues
    queue1_name = "Queue1_AgentsOnetoOne_${var.TF_ENV}"
    queue2_name = "Queue2_PoolAttention_${var.TF_ENV}"

    #queue flows
    queue1_flow1 = "Q1F1_OneToOne_Sales_${var.TF_ENV}"
    queue1_flow2 = "Q1F2_OneToOne_NoSales_${var.TF_ENV}"
    queue2_flow1 = "Q2F1_PoolAttention_Sales_${var.TF_ENV}"
    queue2_flow2 = "Q2F2_PoolAttention_NoSales_${var.TF_ENV}"

    division = "${var.TF_ENV}"
    default_language = "es-us"    
}