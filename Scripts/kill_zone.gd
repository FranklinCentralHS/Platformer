extends Area2D

@onready var timer = $Timer

func _on_body_entered(body:Node2D):
	if body.name=="Player":
		body.playerDeath()
		body.get_node("CollisionShape2D").queue_free()
		Engine.time_scale =.5
		timer.start()
		pass


func _on_timer_timeout():	
	get_tree().reload_current_scene()
	Engine.time_scale =1
