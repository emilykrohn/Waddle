extends Node

var color = "none"
var collected := false
var presents_collected := 0

func _on_area_2d_area_entered(area):
	if not collected:
		if area.name == "YellowPresent" or area.name == "RedPresent" or area.name == "GreenPresent":
			color = area.COLOR
			collected = true
			area.queue_free()
			if presents_collected == 16:
				get_parent().player_won = true

