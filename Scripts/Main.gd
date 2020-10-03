extends Node

onready var iteration = get_node("/root/GlobalVar").iterations
onready var tasks = ["Computer", "Kitchen", "Shelf", "Banker", "Shave", "Pills", "Fireplace", "Window", "Furnace", "Bulb", "Cook"]
var today_tasks = []

func _ready():
	randomize()
	for i in range(4) :
		var random = randi() % 11 - i
		today_tasks.append(tasks[random])
		tasks.remove(random)
	
	
	$HUD.set_tasks(today_tasks)
