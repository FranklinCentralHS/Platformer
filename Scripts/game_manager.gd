extends Node

var score = 0
@onready var coin_counter: Label = $"../HUD/coinCounter"


func add_point():
	score+=1
	coin_counter.text = "x" + str(score)
