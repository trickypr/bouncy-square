extends Area2D

export var jump_impulse = 200
export var gravity_val = 100
export var speed_right = 100

var velocity = Vector2.ZERO

func _get_input():
	if Input.is_action_just_pressed("ui_accept"):
		velocity.y = -jump_impulse

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocity.y += gravity_val * delta
	_get_input()
	position += velocity * delta
	position.x += speed_right * delta



func _dead(area):
	print("dead")
	get_tree().change_scene("res://Death.tscn")
