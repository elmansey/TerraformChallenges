resource "docker_container" "phpmyadmin" {
  name  = "db_dashboard"
  image = "phpmyadmin/phpmyadmin"
  hostname = "phpmyadmin"
  networks_advanced {
    name = "my_network"
  }
  ports {
    # container port 
    internal = 80
    # host port 
    external = 8081
    ip       = "0.0.0.0"
  }
  labels {
    label = "challenge" 
    value = "second"
  }
  links = [docker_container.mariadb.name]
  depends_on = [docker_container.mariadb]
}