extends Button

@warning_ignore("integer_division")
func _physics_process(_delta):
	size.x = get_window().size.x/20
	size.y = size.x

func _ready():
	position.x = 10
	position.y = 7
	
