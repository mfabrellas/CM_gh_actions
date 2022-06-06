module "module_intent_intermediate" {
    source = "../modules/intent-bundle-intermediate"
    
    common_module_name = "IntentClientModuleIntermediate_WORK"
    example_flow_name = "IntentBotExample_WORK"
    queue_name = "modulosComunes_WORK"
    division = "WORK"
    default_language = "es-us"
}