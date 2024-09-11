extends Area2D

@onready var game_manaager = %GameManager
@onready var animation_player = $AnimationPlayer

func _on_body_entered(body:Node2D):
	game_manaager.add_point()
	animation_player.play("pickup")	
