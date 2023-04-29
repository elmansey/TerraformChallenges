# docker network 
resource "docker_network" "private_network" {
  name = "my_network"
  labels {
    label = "challenge"
    value = "second"
  }
  attachable = true
}