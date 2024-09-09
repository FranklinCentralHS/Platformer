extends Area2D
@onready var audio_stream_player_2d: AudioStreamPlayer2D = $AudioStreamPlayer2D
@onready var timer: Timer = $Timer
@export var targetLevel: int

func _on_body_entered(body: Node2D):
	if body.name=="Player":
		audio_stream_player_2d.play()
		timer.start()
		#Plays a sound effect and starts timer


func _on_timer_timeout() -> void:
	if targetLevel ==1:
		get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
		pass
	elif targetLevel ==2:
		get_tree().change_scene_to_file("res://Scenes/Level2.tscn")
		pass
	elif targetLevel ==3:
		get_tree().change_scene_to_file("res://Scenes/Level3.tscn")
		pass
	elif targetLevel ==4:
		get_tree().change_scene_to_file("res://Scenes/Level4.tscn")
		pass
	else:
		get_tree().change_scene_to_file("res://Scenes/menu.tscn")
	#Sends you to the target levle based on your set value
