extends CharacterBody2D

@export var speed2 = 300
@export var gravity2 = 15
@export var jump_force2 = -300

func _physics_process(_delta):
	if !is_on_floor():
		velocity.y += gravity2
		
	if Input.is_action_just_pressed("jump2") and is_on_floor():
		velocity.y = jump_force2
		
	var horizontal = Input.get_axis("move_left2", "move_right2")
	velocity.x = speed2 * horizontal
	move_and_slide()
	if GlobalVar.it_just_changed:
		it_changed()
		GlobalVar.it_just_changed = false
	
func it_changed():
	if GlobalVar.player2_it:
		speed2 = 350
		%It2.visible = true
	else:
		speed2 = 300
		%It2.visible = false

func _on_it_radius_2_area_entered(_area: Area2D) -> void:
	GlobalVar.player2_it = !GlobalVar.player2_it
	GlobalVar.it_just_changed = true
