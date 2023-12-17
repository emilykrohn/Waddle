extends Node

@onready var walking = $"../AnimatedSprite2D"
@onready var carrying = $"../AnimatedSprite2D2"
var is_carrying := false
var color

func play():
	if is_carrying:
		carrying.play("Carry" + color)
	else:
		walking.play("walk")

func stop():
	walking.stop()
	carrying.stop()
