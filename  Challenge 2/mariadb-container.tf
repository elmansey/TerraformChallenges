resource "docker_container" "mariadb" {
  name  = "db"
  image = docker_image.mariadb-image.name
  hostname = "db"
  networks_advanced {
    name = "my_network"
  }
  ports{
    # container port 
    internal = 3306
    # host port 
    external = 3306
    ip       = "0.0.0.0"
  }
  labels {
      label = "challenge" 
      value =  "second"
  }
  volumes {
    volume_name = "mariadb-volume"
    container_path = "/var/lib/mysql"
  }
  env = [
   "MYSQL_ROOT_PASSWORD=1234",
   "MYSQL_DATABASE=simple-website"  
  ]
}