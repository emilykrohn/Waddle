extends Control

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $%Player.player_won:
		visible = true


func _on_button_pressed():
	get_tree().reload_current_scene()
