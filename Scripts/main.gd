extends Node2D

func _on_audio_stream_player_2d_finished():
	$AudioStreamPlayer2D.play()
