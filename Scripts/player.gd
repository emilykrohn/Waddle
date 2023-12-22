extends CharacterBody2D

const SPEED = 300.0
var player_won := false

func _physics_process(_delta):
	if not player_won:
		$%PlayerMovement.movement(SPEED)
	
	move_and_slide()
