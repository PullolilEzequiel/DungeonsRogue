extends CharacterBody2D

var speed := 120
var direction : Vector2
@onready var sprite := $Sprite2D
func _physics_process(delta):
	direction.x = Input.get_axis("ui_left", "ui_right")
	direction.y = Input.get_axis("ui_up", "ui_down") 
	direction = direction.normalized()
	
	velocity = direction * speed
	sprite.flip_h = direction.x < 0 if direction.x != 0 else sprite.flip_h
	move_and_slide()
