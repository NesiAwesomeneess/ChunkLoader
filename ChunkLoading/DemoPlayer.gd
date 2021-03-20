extends KinematicBody2D

func _physics_process(delta):
	var velocity = Vector2()
	if Input.is_action_pressed("ui_left"):
		velocity.x = -1
	if Input.is_action_pressed("ui_right"):
		velocity.x = 1
	if Input.is_action_pressed("ui_down"):
		velocity.y = 1
	if Input.is_action_pressed("ui_up"):
		velocity.y = -1
	velocity = move_and_slide(velocity.normalized() * 5000 * delta)
