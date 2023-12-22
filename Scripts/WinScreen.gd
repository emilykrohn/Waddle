extends Control

var can_restart := false

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if $%Player.player_won:
		visible = true
	if can_restart:
		get_tree().reload_current_scene()

func _on_button_pressed():
	$%ButtonSound.play()
	$Timer.start()

func _on_timer_timeout():
	can_restart = true
