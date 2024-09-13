extends CanvasLayer

@onready var label = $label
var score = 0

func addCoin():
	score+=1
	label.text = str(score)
