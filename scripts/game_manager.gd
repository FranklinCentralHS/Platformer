extends Node

var score = 0

@onready var score_label = $ScoreLabel
@onready var hud_coins = $HUD/Coins

func add_point():
	score+=1
	score_label.text = "You collected " + str(score) + " coins"
	hud_coins.text = str(score)
