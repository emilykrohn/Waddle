extends Sprite2D

func _process(_delta):
	if $%Player/Collect.presents_collected == 4:
		region_rect = Rect2(32,0,32,32)
	if $%Player/Collect.presents_collected == 8:
		region_rect = Rect2(64,0,32,32)
	if $%Player/Collect.presents_collected == 12:
		region_rect = Rect2(96,0,32,32)
	if $%Player/Collect.presents_collected == 16:
		region_rect = Rect2(128,0,32,32)
