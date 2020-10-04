extends KinematicBody2D

const VELOCITY : int = 500 # A changer pour modifier la vitesse du personnage
signal task(task_name)
var task_name : String

func _process(delta): # Cette fonction est exécutée à chaque image calculée par le moteur
	var displacment : Vector2 = Vector2(0, 0) # Un vecteur qui illustre les input du joueur
	var action_is_pressed : bool = false
	# Ce bloc permet de prendre les input du joueur
	if Input.is_action_pressed("ui_up"):
		displacment = Vector2(-1, -1)
		action_is_pressed = true
	if Input.is_action_pressed("ui_down"):
		displacment = Vector2(1, 1)
		action_is_pressed = true
	if Input.is_action_pressed("ui_left"):
		displacment = Vector2(-1, 1)
		action_is_pressed = true
	if Input.is_action_pressed("ui_right"):
		displacment = Vector2(1, -1)
		action_is_pressed = true
	
	if Input.is_action_just_pressed("ui_task"):
		if task_name != "" :
			emit_signal("task", task_name)
	
	if action_is_pressed :
		if displacment == Vector2(1, -1) :
			$AnimatedSprite.play("back")
			$AnimatedSprite.flip_h = true
		if displacment == Vector2(1, 1) :
			$AnimatedSprite.play("front")
			$AnimatedSprite.flip_h = false
		if displacment == Vector2(-1, 1) :
			$AnimatedSprite.play("front")
			$AnimatedSprite.flip_h = true
		if displacment == Vector2(-1, -1) :
			$AnimatedSprite.play("back")
			$AnimatedSprite.flip_h = false
		
	
	else :
		$AnimatedSprite.stop()
	
	displacment = displacment.normalized()*VELOCITY # Normalise le vecteur pour garder toujours la même vitesse et multiplie par la vélocité
	move_and_slide(displacment) # Déplace le personnage


func _on_DetectTasks_area_entered(area): # Cette fonction s'exécute quand le joueur détecte une tache
	task_name = area.name

func _on_DetectTasks_area_exited(area): # Cette fonction s'exécute quand le joueur sors de la zone de détection de la tache
	task_name = ""
