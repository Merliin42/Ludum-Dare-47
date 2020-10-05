extends Node

onready var iteration = get_node("/root/GlobalVar").iterations
onready var tasks = ["Computer", "Kitchen", "Shelf", "Shave", "Fireplace", "Furnace", "Bulb"]
var today_tasks = []
var try_mary = 0

func _ready():
	randomize()
	for i in range(4) :
		var random = randi() % (tasks.size() - i)
		today_tasks.append(tasks[random])
		tasks.remove(random)
	if iteration % 4 == 0 :
		today_tasks.append("Mary")
	$HUD.set_tasks(today_tasks)
	$Tween.interpolate_property($World, "modulate", Color(0, 0, 0, 1), Color(1, 1, 1, 1), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()

func _on_Character_task(task_name):
	if today_tasks.find(task_name) != -1 :
		$HUD.task_done(task_name)
		today_tasks.remove(today_tasks.find(task_name))
	if task_name == "Mary" :
		try_mary += 1
	if try_mary >= 5 :
		pass
	if today_tasks.size() == 0 :
		$Tween.interpolate_property($World, "modulate", Color(1, 1, 1, 1), Color(0, 0, 0, 1), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()


func _on_Tween_tween_completed(object, key):
	if today_tasks.size() == 0 :
		get_node("/root/GlobalVar").iterations += 1
		get_tree().reload_current_scene()
