extends Area2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	
	#randomize()
	var light_types = $Sprite.frames.get_animation_names()
	$Sprite.animation = light_types[randi() % light_types.size()]
	
	#var x_range = Vector2(14, 737)
	#var y_range = Vector2(134, 345)
	#var random_x = randi() % int(x_range[1]- x_range[0]) + 1 + x_range[0] 
	#var random_y =  randi() % int(y_range[1]-y_range[0]) + 1 + y_range[0]
	#var random_pos = Vector2(random_x, random_y)
		
	#$Sprite.position = random_pos
	#$Light2D.position = random_pos
