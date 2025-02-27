extends Node2D

var rng = RandomNumberGenerator.new()

func _ready():
	var my_random_number = rng.randi_range(1, 2)
	if my_random_number == 1:
		GlobalVar.player1_it = true
	else:
		GlobalVar.player2_it = true
	GlobalVar.it_just_changed = true
