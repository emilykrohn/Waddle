extends PathFollow2D

var presents = [preload("res://Scenes/yellow_present.tscn"),preload("res://Scenes/green_present.tscn"),preload("res://Scenes/red_present.tscn")]

# Called when the node enters the scene tree for the first time.
func _ready():
	add_child(presents[randi() % presents.size()])
