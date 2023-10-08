extends Node2D


var moving_direction = Vector2.ZERO	
var speed : float = 0.35

func move_right():
	_move(1,0)
func move_up():
	_move(0,1)
func move_left():
	_move(-1,0)
	
func move_down():
	_move(0,-1)
	

func _move(x,y):
	var tween = create_tween()
	
	tween.tween_property(self, "position", position + Vector2(position*x,position*y), speed).set_trans(Tween.TRANS_LINEAR)
	tween.tween_callback(func(): moving_direction = Vector2.ZERO)
