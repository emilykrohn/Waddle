extends Node

var color
var collected := false

func _on_area_2d_area_entered(area):
	if not collected:
		if area.name == "YellowPresent":
			color = "yellow"
			area.queue_free()
			print("yellow")
			collected = true
		elif area.name == "RedPresent":
			color = "red"
			area.queue_free()
			print("red")
			collected = true
		elif area.name == "GreenPresent":
			color = "green"
			area.queue_free()
			print("green")
			collected = true
