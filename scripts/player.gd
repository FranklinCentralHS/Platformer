extends CharacterBody2D


const SPEED = 130
const JUMP_VELOCITY = -300.0
#the number of jumps 
var jump_count = 0
var max_jumps = 2

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	if is_on_floor():
		jump_count = 0
	# Handle jump.
	if Input.is_action_just_pressed("jump") and jump_count < max_jumps:
		velocity.y = JUMP_VELOCITY
		jump_count +=1
		
	# Get the input direction: -1, 0, 1
	var direction := Input.get_axis("move_left", "move_right")
	
	#Flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true
	
	#Play animation
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")
	
	
	#Apply movement
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
