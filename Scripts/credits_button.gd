extends Button
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var credits_bg: Sprite2D = $"../CreditsBg"
@onready var credits: Label = $"../Credits"

func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
	animation_player.play("ScaleUpCredits")

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	animation_player.play("ScaleDownCredits")


func _on_pressed() -> void:
	animation_player.play("MenuHide")
	credits_bg.visible=true
	credits.visible=true
	pass # Replace with function body.
