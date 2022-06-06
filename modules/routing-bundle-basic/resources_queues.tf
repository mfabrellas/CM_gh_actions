resource "genesyscloud_routing_queue" "Queue1_AgentsOnetoOne" {

  name = var.queue1_name
  division_id = data.genesyscloud_auth_division.division.id
  description = "Queue to rout from Common Modules"
  acw_wrapup_prompt = "OPTIONAL"
  auto_answer_only = false
  routing_rules {
    operator     = "MEETS_THRESHOLD"
    threshold    = 90
    wait_seconds = 10
  }
  routing_rules {
    operator     = "ANY"
    wait_seconds = 10
  }
}

resource "genesyscloud_routing_queue" "Queue2_PoolAttention" {

  name = var.queue2_name
  division_id = data.genesyscloud_auth_division.division.id
  description              = "Queue to rout from Common Modules"
  acw_wrapup_prompt        = "OPTIONAL"
  auto_answer_only     = false
}

data "genesyscloud_auth_division" "division" {
  name = var.division
}