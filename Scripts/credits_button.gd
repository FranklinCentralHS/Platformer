extends Button
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var info_bg: Sprite2D = $"../InfoBg"
@onready var credits: Label = $"../Credits"
@onready var back_button_credits: Button = $"../BackButtonCredits"

func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
	animation_player.play("ScaleUpCredits")

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	animation_player.play("ScaleDownCredits")


func _on_pressed() -> void:
	info_bg.visible=true
	credits.visible=true
	back_button_credits.visible=true
	back_button_credits.disabled=false
	animation_player.play("MenuHide")
#Runs the animation to hide the menu and shows the credits
