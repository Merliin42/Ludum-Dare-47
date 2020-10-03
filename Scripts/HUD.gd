extends CanvasLayer

func set_tasks(today_tasks):
	for i in today_tasks :
		get_node("PostIt/TextureRect/VBoxContainer/" + i).visible = true
