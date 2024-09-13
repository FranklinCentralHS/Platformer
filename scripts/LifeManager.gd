extends Node
@onready var label = get_node("/root/Game/Player/Label")
@onready var timer = get_node("/root/Killzone/Timer")


var hearts = 3
var death = false

func activate():
	if hearts > 1:
		print("Lost hearts!")
		hearts -= 1
		print(hearts)
		label.text = str(hearts)
	else:
		print("You died.")
		label.text = ("You died.")
		death = true
func DEATH():
	death = true
	label.text = ("You died.")
