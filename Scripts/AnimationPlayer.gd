extends Node

@onready var walking = $"../AnimatedSprite2D"
@onready var carrying = $"../AnimatedSprite2D2"

func play():
	if not $%Collect.collected:
		carrying.visible = false
		walking.visible = true
		walking.play("walk")
	else:
		carrying.visible = true
		walking.visible = true
		carrying.play("Carry" + $%Collect.color)

func stop():
	walking.stop()
	carrying.stop()
