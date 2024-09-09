extends Button

@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"



func _on_pressed() -> void:
	animation_player.play("ShowPauseMenu")
	Engine.time_scale=0
