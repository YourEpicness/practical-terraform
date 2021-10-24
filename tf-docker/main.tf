module "image" {
  source = "./image"
  # get all keys and values from our locals deployment
  for_each = local.deployment
  image_in = each.value.image
}

module "container" {
  source   = "./container"
  count_in = each.value.container_count
  for_each = local.deployment
  # Name is subjective
  name_in = each.key
  # Docker image from our image module
  image_in = module.image[each.key].image_out
  # Port mapping
  int_port_in = each.value.int
  ext_port_in = each.value.ext
  volumes_in  = each.value.volumes
}


