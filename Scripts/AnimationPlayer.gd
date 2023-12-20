extends Node

@onready var walking = $"../AnimatedSprite2D"
@onready var carrying = $"../AnimatedSprite2D2"
var is_carrying := false
var present_color

func play():
	if not $%Collect.collected:
		carrying.visible = false
		walking.visible = true
		walking.play("walk")
	else:
		carrying.visible = true
		walking.visible = true
		present_color = $%Collect.color
		carrying.play("Carry" + present_color)

func stop():
	walking.stop()
	carrying.stop()
