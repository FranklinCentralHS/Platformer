extends CharacterBody2D


const SPEED = 30.0
const JUMP_VELOCITY = -400.0

# Get the gravity from the project settings to be synced with RigidBody nodes.
#var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")

var direction = 1
@onready var ray_cast_down = $RayCastDown
@onready var ray_cast_up = $RayCastUp
@onready var animated_sprite = $AnimatedSprite2D
func _process(delta):
	if ray_cast_up.is_colliding():
		direction = 1
		animated_sprite.flip_h = true
	if ray_cast_down.is_colliding():
		direction = -1
		animated_sprite.flip_h = true


	position.y += direction * SPEED * delta

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	#var direction = Input.get_axis("ui_left", "ui_right")
	#if direction:
		#velocity.y = direction * SPEED
	#else:
		#velocity.y = move_toward(velocity.x, 0, SPEED)

 	#move_and_slide()
