extends Area2D


@onready var timer = $Timer 

func _on_body_entered(_body:Node2D):
	print("You Died!")
	Engine.time_scale = 0.5
	timer.start()

func _on_timer_timeout():
	Engine.time_scale = 1.0
	print("timeout")
	get_tree().reload_current_scene()
