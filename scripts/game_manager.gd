extends Node

var score = 0
const MAX_SCORE = 11

@onready var score_label = $ScoreLabel

func add_point():
	score += 1
	score_label.text = "You collected " + str(score) + " coins."
	if score == MAX_SCORE:
		print(MAX_SCORE)
		get_tree().change_scene_to_file("res://scenes/endscreen.tscn")