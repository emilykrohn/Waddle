extends StaticBody2D

var in_range := false

func _process(_delta):
	if in_range and Input.is_action_just_pressed("ui_select") and $%Player/Collect.collected:
		if $%Player/Collect.color == "Green":
			$%Player/Collect.collected = false
			$%Player/Collect.presents_collected += 1
			$"../../../CorrectSound".play()
		else:
			$"../../../WrongSound".play()

func _on_area_2d_body_entered(body):
	if body.name == "Player":
		in_range = true


func _on_area_2d_body_exited(body):
	if body.name == "Player":
		in_range = false
