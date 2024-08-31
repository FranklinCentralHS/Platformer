extends CharacterBody2D


const SPEED = 130.0
const JUMP_VELOCITY = -300.0
var death = false
#Tracks if the player is dead
var direction
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D

@onready var animated_sprite = $AnimatedSprite2D
func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor() and death==false:
		velocity.y += gravity * delta
	#The if statement below prevents the player from moving when dead
	if death ==false:
		# Handle jump.
		if Input.is_action_just_pressed("jump") and is_on_floor():
			velocity.y = JUMP_VELOCITY
			audio_stream_player_2d.play()


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	
	#The if statement below prevents the player from moving when dead

	if death ==false:
		direction = Input.get_axis("move_left", "move_right")

	if direction>0:
		animated_sprite.flip_h=false
	elif direction<0:
		animated_sprite.flip_h=true
	#Play Animation
	if death==false:
		if is_on_floor():
			if direction ==0:
				animated_sprite.play("Idle")
			else:
				animated_sprite.play("Run")

		else:
			animated_sprite.play("Jump")


	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()



func playerDeath():
	death=true
	direction = 0
	animated_sprite.play("Death")
