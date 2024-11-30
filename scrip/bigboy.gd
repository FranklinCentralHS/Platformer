extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -251.0
var Jumps_Left = 2

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("jump") and Jumps_Left > 0:
		velocity.y = JUMP_VELOCITY
		Jumps_Left = - 1

	# Get the input direction -1, 0, 1.
	var direction = Input.get_axis("move_left", "move_right")
	
	# Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
		
		#player animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idleing")
			Jumps_Left = + 1
		else:
			animated_sprite.play("Running")
			Jumps_Left = + 1
	else:
		animated_sprite.play("Jumping")
	
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
