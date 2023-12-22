extends CharacterBody2D

const SPEED = 300.0
var player_won := false
var game_start := false

func _physics_process(_delta):
	if not player_won and game_start:
		$%PlayerMovement.movement(SPEED)
		if $%PlayerMovement.is_walking:
			$"../../WalkSound".play()
	
	move_and_slide()


func _on_button_pressed():
	game_start = true


func _on_walk_sound_finished():
	if $%PlayerMovement.is_walking:
		$"../../WalkSound".play()
