#Resource to create example Inbound Call Flow in genesys cloud
resource "genesyscloud_flow" "IntentBotExample" {
  filepath = "./example/IntentBotExample.yaml"
  substitutions = {
      example_flow_name = var.example_flow_name
      division = var.division
      default_language = var.default_language

      queue_name = var.queue_name
      
      #call common module
      common_module_name = var.common_module_name
  }
  depends_on = [
    genesyscloud_flow.IntentClientModuleIntermediate   
  ]
}

#Resource to create Common Module Flow in genesys cloud
resource "genesyscloud_flow" "IntentClientModuleIntermediate" {
  filepath = "./commonmodule/IntentClientModuleIntermediate.yaml"
  substitutions = {
      common_module_name = var.common_module_name
      division = var.division
      default_language = var.default_language
  }
}







