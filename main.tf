resource "azurerm_resource_group" "this" {
  name = "${var.project}-${var.env}-${var.location}"

  location = var.location
  tags     = var.tags

  lifecycle {
    prevent_destroy = false
  }
}
