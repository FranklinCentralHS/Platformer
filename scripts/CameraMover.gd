extends Node2D

var SPEED = 60
var direction = 1
@onready var ray_cast_right = $RayCastRight

func _process(delta):
	if ray_cast_right.is_colliding():
		direction = -1
		SPEED = 0
	
	position.x += direction * SPEED * delta
