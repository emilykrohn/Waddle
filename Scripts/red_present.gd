extends Area2D

const COLOR = "Red"

func _process(_delta):
	$%PresentMovement.movement(1)


func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
