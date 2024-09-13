extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	process_mode = Node.PROCESS_MODE_ALWAYS
	var _pause = Input.is_action_just_pressed("pause")
	var _resume = Input.is_action_just_pressed("resume")
	if _pause:
		get_tree().paused = true
	elif _resume:
		get_tree().paused = false
