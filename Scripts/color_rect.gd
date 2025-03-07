extends ColorRect

signal door1_open
var emitted = false

func _process(delta: float) -> void:
	if %NegWire.default_color == Color(1, 1, 0) && %PosWire.default_color == Color(1, 1, 0) && !emitted:
		self.color = "ffff00"
		emit_signal("door1_open")
		emitted = true
