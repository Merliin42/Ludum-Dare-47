extends Node

onready var iteration = get_node("/root/GlobalVar").iterations
onready var tasks = ["Computer", "Kitchen", "Shelf", "Shave", "Pills", "Fireplace", "Window", "Furnace", "Bulb", "Cook"]
var today_tasks = []

func _ready():
	randomize()
	for i in range(4) :
		var random = randi() % (tasks.size() - i)
		today_tasks.append(tasks[random])
		tasks.remove(random)
	$HUD.set_tasks(today_tasks)

func _on_Character_task(task_name):
	if today_tasks.find(task_name) != -1 :
		$HUD.task_done(task_name)
		today_tasks.remove(today_tasks.find(task_name))
