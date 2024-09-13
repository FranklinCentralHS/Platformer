extends CharacterBody2D



const SPEED = 70.0
const SPRINT_SPEED = 150



const JUMP_VELOCITY = -300.0
const MAX_JUMPS = 1  # The maximum number of jumps (1 double jump in addition to the initial jump)

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
var jumps_left = MAX_JUMPS  # Tracks how many jumps are left

@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept"):
		if is_on_floor():
			# Reset jumps when on the floor
			jumps_left = MAX_JUMPS
			velocity.y = JUMP_VELOCITY
		elif jumps_left > 0:
			# Allow double jump if jumps are left
			jumps_left -= 1
			velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#get the input direction: -1, 0, 1
	var direction = Input.get_axis("move_left", "move_right")
	var is_sprinting = Input.is_action_pressed("sprint")
	var movement_speed = SPEED
	var reset = Input.is_action_pressed("reset")
	if reset:
		get_tree().reload_current_scene()

	if is_sprinting:
		movement_speed = SPRINT_SPEED
	else:
		movement_speed = SPEED
	# flip the Sprite
	if direction > 0:
		animated_sprite.flip_h = false
	elif direction < 0:
		animated_sprite.flip_h = true

	#play animations
	if is_on_floor():
		if direction == 0:
			animated_sprite.play("idle")
		else:
			animated_sprite.play("run")
	else:
		animated_sprite.play("jump")

	#apply movement
	if direction:
		velocity.x = direction * movement_speed
	else:
		velocity.x = move_toward(velocity.x, 0, movement_speed)

	move_and_slide()


