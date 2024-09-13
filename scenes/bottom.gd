extends Area2D

@onready var lifemanager = get_node("/root/Game/LifeManager")
@onready var timer = $Timer2
@onready var agony = $AGONY

func _on_body_entered(body):
	agony.play()
	Engine.time_scale = 0.5
	body.get_node("CollisionShape2D").queue_free()
	timer.start()
	
	
	


func _on_timer_2_timeout():
	Engine.time_scale = 1.0
	get_tree().reload_current_scene()
