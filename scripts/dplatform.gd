extends StaticBody2D

@onready var timer: Timer = $Timer
@onready var collision_shape_2d: CollisionShape2D = $platform

func _on_area_2d_body_entered(body:Node2D):
	timer.start()

func _on_timer_timeout():
	var tween = create_tween()
	tween.tween_property(self, "modulate:a",0,0.4)
	collision_shape_2d.position = Vector2(-10000,20000)
