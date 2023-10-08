extends CharacterBody2D

var pixel_per_meter := 16
var direction : Vector2
var velocidad : Vector2
var rapidez := 3 * pixel_per_meter


func _input(event):
	direction = Vector2.ZERO
	if Input.is_action_pressed("ui_left"):
		direction.x = -1 
	if Input.is_action_pressed("ui_right"):
		direction.x = 1 

	if Input.is_action_pressed("ui_down"):
		direction.y = -1 
	if Input.is_action_pressed("ui_up"):
		direction.y = 1 
	
func _physics_process(delta):
	velocidad.x = direction.x * rapidez
	velocidad.y = direction.y * rapidez
		
	move_and_slide()
