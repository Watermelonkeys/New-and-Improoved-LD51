extends KinematicBody2D

var ammo = 6
var velocity = Vector2(0,0)
const max_speed = 150
const GRAVITY = 30
const JUMPFORCE = -500

func _physics_process(delta):
	if Input.is_action_pressed("right"):
		velocity.x = max_speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = true
	elif Input.is_action_pressed("left"):
		velocity.x = -max_speed
		$AnimatedSprite.play("walk")
		$AnimatedSprite.flip_h = false
	else:
		$AnimatedSprite.play("idle")
		
	if not is_on_floor():
		$AnimatedSprite.play("air")
	
	velocity.y = velocity.y + GRAVITY
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
		velocity.y = JUMPFORCE
	velocity = move_and_slide(velocity,Vector2.UP)
	velocity.x = lerp(velocity.x,0,0.2)
	
