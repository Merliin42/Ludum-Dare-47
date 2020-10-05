extends CanvasLayer

onready var iteration = get_node("/root/GlobalVar").iterations

func _ready():
	$SnowTV.modulate = Color(1, 1, 1, iteration / 10)

func set_tasks(today_tasks):
	for i in today_tasks :
		get_node("PostIt/TextureRect/VBoxContainer/" + i).visible = true

func task_done(task_name):
	if task_name != "Mary" :
		get_node("PostIt/TextureRect/VBoxContainer/" + task_name).add_color_override("font_color", Color(.67, .67, .67, 1))
	else :
		get_node("PostIt/TextureRect/VBoxContainer/" + task_name).add_color_override("font_color", Color(1, 0, 0, 1))
