variable "image_name" {}

provider "oci" {
  user              = var.oci_user
  fingerprint       = var.oci_fingerprint
  key_file          = var.oci_key_file
  tenancy_ocid      = var.oci_tenancy_ocid
  region            = var.oci_region
  compartment_id    = var.oci_compartment_ocid
}

resource "oci_container_instances_container_instance" "example" {
  compartment_id     = var.oci_compartment_ocid
  display_name       = "my-container-instance"
  image              = var.image_name
  shape              = "VM.Standard.E2.1.Micro"
  subnet_id          = var.subnet_ocid

  container {
    name    = "my-container"
    image   = var.image_name
    cpu     = 1
    memory  = 1
  }

  tags = {
    "environment" = "production"
  }
}
