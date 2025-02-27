extends Camera2D


func _process(delta):
	self.global_position = (%Player1.global_position + %Player2.global_position) * 0.5

	var zoom_factor1 = abs(%Player1.global_position.x- %Player2.global_position.x)/(1152-100)
	var zoom_factor2 = abs(%Player1.global_position.y- %Player2.global_position.y)/(648-100)
	var zoom_factor = max(max(zoom_factor1, zoom_factor2), 1)

	self.zoom = Vector2(1/zoom_factor, 1/zoom_factor)
