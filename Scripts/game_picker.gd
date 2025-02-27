extends Control


func _on_game_1_pressed():
	get_tree().change_scene_to_file("res://Scenes/ready_screen.tscn")
	GlobalVar.game = 1

func _on_back_pressed():
	get_tree().change_scene_to_file("res://Scenes/TitleScreen.tscn")
