extends Area2D

func _on_body_shape_entered(body_rid:RID, body:Node2D, body_shape_index:int, local_shape_index:int):
	if body.is_in_group("Player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
		var next_level_number = current_scene_file.to_int() + 1
		var next_level_path = "res://levels/level_" + str(next_level_number) + ".tscn"
		print(next_level_path)
		get_tree().change_scene_to_file(next_level_path)
