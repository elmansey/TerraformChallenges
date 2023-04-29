#Start a container
resource "docker_container" "php-httpd" {
  name  = "webserver"
  image = docker_image.php-httpd-image.name
  hostname = "php-httpd"
  networks_advanced {
    name = "my_network"
  }
  ports {
    # container port 
    internal = 80
    # host port 
    external = 80
    ip       = "0.0.0.0"
  }
  labels {
      label  = "challenge" 
      value = "second"
  }
  volumes {
    host_path      = "/root/code/terraform-challenges/challenge2/lamp_stack/website_content/"
    container_path = "/var/www/html"
  }
}

