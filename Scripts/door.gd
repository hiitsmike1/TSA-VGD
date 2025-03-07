extends StaticBody2D

var opening = false

func _on_color_rect_door_1_open() -> void:
	opening = true

func _physics_process(delta: float) -> void:
	if opening and position.y > -150:
		position.y -= 50 * delta
