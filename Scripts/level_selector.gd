extends Node
@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"


func _on_level_1_button_pressed() -> void:
	#Stops music from playing twice?? Weird bug
	Music.stop()
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")

func _on_level_2_button_pressed() -> void:
	#Stops music from playing twice?? Weird bug
	Music.stop()
	get_tree().change_scene_to_file("res://Scenes/Level2.tscn")

func _on_level_3_button_pressed() -> void:
	#Stops music from playing twice?? Weird bug
	Music.stop()
	get_tree().change_scene_to_file("res://Scenes/Level3.tscn")

func _on_level_4_button_pressed() -> void:
	#Stops music from playing twice?? Weird bug
	Music.stop()
	get_tree().change_scene_to_file("res://Scenes/Level4.tscn")

func _on_back_button_pressed() -> void:
	animation_player.play("RESET")

	pass # Replace with function body.
