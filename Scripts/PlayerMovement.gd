extends Node

func movement(speed):
	var direction = Input.get_vector("left", "right", "up", "down")
	get_parent().velocity = direction * speed
	
