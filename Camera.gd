extends Camera

func _process(delta):
	look_at($'../Car'.translation,Vector3(0,1,0))
