extends Control

var timeleft = 3

func _on_timer_timeout() -> void:
	timeleft -= 1
	%Label.text = str(timeleft)
	if %Label.text == "0":
		get_tree().change_scene_to_file("res://Scenes/Game" + str(GlobalVar.game) + ".tscn")
