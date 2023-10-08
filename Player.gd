extends CharacterBody2D

var speed := 60
var direction_x := 0.0
var direction_y := 0.0
func _physics_process(delta):
	direction_x = Input.get_axis("ui_left", "ui_right") * 2
	direction_y = Input.get_axis("ui_up", "ui_down") * 2
	
	velocity.x = direction_x * speed 
	velocity.y = direction_y * speed 
	
	move_and_slide()
