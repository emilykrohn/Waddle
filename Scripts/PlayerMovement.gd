extends Node

var direction

func movement(speed):
	var direction = Input.get_vector("left", "right", "up", "down")
	get_parent().velocity = direction * speed
	if direction != Vector2.ZERO:
		$%AnimationPlayer.play()
	else:
		$%AnimationPlayer.stop()
