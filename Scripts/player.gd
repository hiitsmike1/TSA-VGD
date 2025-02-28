extends CharacterBody2D

@export var speed1 = 400
@export var gravity1 = 15
@export var jump_force1 = -300

func _physics_process(_delta):
	if !is_on_floor():
		velocity.y += gravity1
		
	if Input.is_action_just_pressed("jump1") and is_on_floor():
		velocity.y = jump_force1
		
	var horizontal = Input.get_axis("move_left1", "move_right1")
	velocity.x = speed1 * horizontal
	move_and_slide()
	if GlobalVar.it_just_changed:
		it_changed()
	
func it_changed():
	if GlobalVar.player1_it:
		speed1 = 350
		%It1.visible = true
	else:
		speed1 = 300
		%It1.visible = false

func _on_it_radius_1_area_entered(_area: Area2D) -> void:
	GlobalVar.player1_it = !GlobalVar.player1_it
	GlobalVar.it_just_changed = true
