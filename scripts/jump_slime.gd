extends Node2D

const SPEED = 60

var direction_newslime = 1

@onready var ray_cast_right_newslime = $RayCastRightNew
@onready var ray_cast_left_newslime = $RayCastLeftNew
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_right_newslime.is_colliding():
		direction_newslime = -1
	if ray_cast_left_newslime.is_colliding():
		direction_newslime = 1
	position.x += direction_newslime * SPEED * delta 