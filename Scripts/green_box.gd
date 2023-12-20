extends StaticBody2D

var in_range := false

func _process(_delta):
	if in_range and Input.is_action_just_pressed("ui_select"):
		print("Test")

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		in_range = true


func _on_area_2d_body_exited(body):
	if body.name == "Player":
		in_range = false
