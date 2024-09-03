extends Button
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var back_button_credits: Button = $"../BackButtonCredits"


func _on_mouse_entered() -> void:
	#Scales button up when it's hovered over
	animation_player.play("ScaleUpHelp")

func _on_mouse_exited() -> void:
	#Resets the button once it's not hovered over
	animation_player.play("ScaleDownHelp")


func _on_pressed() -> void:
	$"../Instructions".visible = true
	$"../InfoBg".visible= true
	back_button_credits.visible=true
	back_button_credits.disabled=false
	animation_player.play("MenuHide")
#Runs the animation to hide the menu and shows the instructions
