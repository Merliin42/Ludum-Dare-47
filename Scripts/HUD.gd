extends CanvasLayer

func set_tasks(today_tasks):
	for i in today_tasks :
		get_node("PostIt/TextureRect/VBoxContainer/" + i).visible = true

func task_done(task_name):
	get_node("PostIt/TextureRect/VBoxContainer/" + task_name).add_color_override("font_color", Color(.67, .67, .67, 1))
