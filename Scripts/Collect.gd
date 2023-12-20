extends Node

var color = "none"
var collected := false

func _on_area_2d_area_entered(area):
	if not collected:
		if area.name == "YellowPresent" or area.name == "RedPresent" or area.name == "GreenPresent":
			color = area.COLOR
			collected = true
			area.queue_free()
