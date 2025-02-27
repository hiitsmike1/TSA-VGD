extends Control

var player1 = false
var player2 = false
var green = Color(0, 1, 0, 1)
func _physics_process(_delta):
	if Input.is_action_just_pressed("jump1"):
		player1 = true
		%ColorRect.set_color(green)
		print(player1)
	if Input.is_action_just_pressed("jump2"):
		player2 = true
		%ColorRect2.set_color(green)
		print(player2)
	if player1 && player2:
		await get_tree().create_timer(.5).timeout 
		get_tree().change_scene_to_file("res://Scenes/timer.tscn")
