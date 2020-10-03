extends KinematicBody2D

const VELOCITY : int = 200

func _process(delta):
	var displacment : Vector2 = Vector2(0, 0)
	if Input.is_action_pressed("ui_up"):
		displacment.y = -1
	if Input.is_action_pressed("ui_down"):
		displacment.y = 1
	if Input.is_action_pressed("ui_left"):
		displacment.x = -1
	if Input.is_action_pressed("ui_right"):
		displacment.x = 1
	displacment = displacment.normalized()*VELOCITY
	move_and_slide(displacment)
