extends Button

@onready var animation_player: AnimationPlayer = $"../AnimationPlayer"



func _on_pressed() -> void:
	animation_player.play("RESET")
	Engine.time_scale=1
