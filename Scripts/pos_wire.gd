extends Line2D

func _on_pos_area_body_entered(body: Node2D) -> void:
	if body == %Player1:
		self.default_color = "#ffff00"

func _on_pos_area_body_exited(body: Node2D) -> void:
	if body == %Player1:
		self.default_color = "#ffffff"
