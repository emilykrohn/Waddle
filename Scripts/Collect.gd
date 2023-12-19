extends Node

var color
var collected := false

func _on_area_2d_body_entered(body):
	if not collected:
		if body.name == "yellow_present":
			color = "yellow"
		elif body.name == "red_present":
			color = "red"
		elif body.name == "green_present":
			color = "green"
		collected = true
