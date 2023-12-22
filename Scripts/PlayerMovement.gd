extends Node

var direction
var is_walking := false



func movement(speed):
	direction = Input.get_vector("left", "right", "up", "down")
	get_parent().velocity = direction * speed
	if direction != Vector2.ZERO:
		$%AnimationPlayer.play()
		is_walking = true
	else:
		$%AnimationPlayer.stop()
		is_walking = false
