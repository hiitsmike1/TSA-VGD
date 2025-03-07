extends Line2D


func _on_neg_area_body_entered(body: Node2D) -> void:
	if body == %Player2:
		self.default_color = "#ffff00"
		


func _on_neg_area_body_exited(body: Node2D) -> void:
	if body == %Player2:
		self.default_color = "#ffffff"
		
