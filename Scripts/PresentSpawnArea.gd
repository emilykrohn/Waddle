extends Path2D

var rng = RandomNumberGenerator.new()

func _on_timer_timeout():
	if not $%Player.player_won and $%Player.game_start:
		var scene = preload("res://Scenes/path_follow_2d.tscn").instantiate()
		add_child(scene)
		scene.progress_ratio = rng.randf()
