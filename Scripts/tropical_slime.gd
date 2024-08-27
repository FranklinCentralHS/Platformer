extends Node2D

const speed = 60
var direction =1
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x+= direction*speed*delta
