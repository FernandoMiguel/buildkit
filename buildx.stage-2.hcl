group "default" {
	targets = ["php73-xdebug", "nodeapp", "pythonapp", "pythonapp-nginx"]
}

target "cache" {
  cache-to = ["type=inline"]
}

target "php73-xdebug" {
	inherits = ["cache"]
	dockerfile = "buildx-7.3"
}

target "nodeapp" {
	inherits = ["cache"]
	dockerfile = "buildx-node"
}

target "pythonapp" {
	inherits = ["cache"]
	dockerfile = "buildx-python"
}

target "pythonapp-nginx" {
	inherits = ["cache"]
}
