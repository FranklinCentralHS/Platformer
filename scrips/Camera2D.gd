extends Camera2D

@onready var player1 = %player1
@onready var player2 = %player2
# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var width = abs(player1.global_position.x-player2.global_position.x)+40
	print(width)
	pass
