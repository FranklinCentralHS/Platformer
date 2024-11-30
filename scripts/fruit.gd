extends Area2D


# Called when the node enters the scene tree for the first time.


@onready var game_manager1 = %GameManager1


	
	


func _on_body_entered(body:Node2D):
	game_manager1.add_point()
	queue_free()
