extends Button
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"

func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
	animation_player.play("ScaleUpPlay")

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	animation_player.play("ScaleDownPlay")


func _on_pressed() -> void:
	animation_player.play("MenuHide")
	animation_player.play("LevelSelectorShow")
	pass # Replace with function body.
