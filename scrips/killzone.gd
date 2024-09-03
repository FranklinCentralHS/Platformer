extends Area2D

@onready var timer = $Timer
@onready var mult_target_cam = %MultTargetCam
@onready var player1 = %player1
@onready var player2 = %player2
@onready var lives = 3
@onready var livesLabel = %Lives


func _on_body_entered(body):
	print("You got damaged")
	lives = lives-1
	print(lives)
	livesLabel.text = "Lives: "
	if lives == 0:
		print("You died")
		print(lives)
		Engine.time_scale = 0.5
		body.get_node("CollisionShape2D").queue_free()	
		timer.start()
		pass # Replace with function body.


func _on_timer_timeout():
	Engine.time_scale = 1
	get_tree().reload_current_scene()
	pass # Replace with function body.
