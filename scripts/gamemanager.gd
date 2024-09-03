extends Node

var score = 0

@onready var score_label = $ScoreLabel


func add_point():
	score += 1
	if score == 1:
		score_label.text = "You have collected " +str(score) + " coin."
	else:
		score_label.text = "You have collected " + str(score) + " coins."
