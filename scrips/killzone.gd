extends Area2D

@onready var timer = $Timer

func _on_body_entered(body):
	print("You died!")
	timer.start()
	pass # Replace with function body.


func _on_timer_timeout():
	get_tree().reload_current_scene()
	pass # Replace with function body.
