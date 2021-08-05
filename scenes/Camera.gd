extends Camera

const speed = 10
func _process(delta):
	var dir = Vector3()
	if Input.is_action_pressed("ui_left"):
		dir.x = -1
	if Input.is_action_pressed("ui_right"):
		dir.x = 1
	if Input.is_action_pressed("ui_up"):
		dir.z = -1
	if Input.is_action_pressed("ui_down"):
		dir.z = 1
	
	if dir:
		translate(speed * dir * delta)
