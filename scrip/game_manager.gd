extends Node

var score = 0
@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You've eaten " + str(score) + " onion rings!"
func _on_Hitbox_area_entered(area: Area2D) -> void:
	if area.is_in_group("bigboy"):
		print()
		get_tree().change_scene("res://Level_" + str(int(get_tree().current_scene.name) + 1) + ".tscn")
