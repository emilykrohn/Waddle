extends Node2D



func _on_button_pressed():
	$%ButtonSound.play()
	$%TitleScreen.visible = false
