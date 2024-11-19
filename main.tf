# main.tf (single provider configuration)

provider "oci" {
  user           = var.oci_user
  fingerprint    = var.oci_fingerprint
  key_file       = var.oci_key_file
  tenancy_ocid   = var.oci_tenancy_ocid
  region         = var.oci_region
  compartment_id = var.oci_compartment_id
}
