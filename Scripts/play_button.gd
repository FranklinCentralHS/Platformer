extends Button

func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
		scale=Vector2(1.05,1.05) 

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	scale=Vector2(1,1)


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Level1.tscn")
	pass # Replace with function body.
