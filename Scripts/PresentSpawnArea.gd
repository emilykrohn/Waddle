extends Path2D

var rng = RandomNumberGenerator.new()

func _on_timer_timeout():
	var scene = preload("res://Scenes/path_follow_2d.tscn").instantiate()
	add_child(scene)
	scene.progress_ratio = rng.randf()
