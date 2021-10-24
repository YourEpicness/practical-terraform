# Refactor individual ip-address and ports to now iterate through maps for the values
output "application_access" {
  value = { for x in docker_container.app_container[*] : x.name => join(":", [x.ip_address], x.ports[*]["external"]) }
}
