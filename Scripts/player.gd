extends CharacterBody2D

const SPEED = 300.0

func _physics_process(delta):
	$%PlayerMovement.movement(SPEED)

	move_and_slide()
