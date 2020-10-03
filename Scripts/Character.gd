extends KinematicBody2D

const VELOCITY : int = 200 # A changer pour modifier la vitesse du personnage

func _process(delta): # Cette fonction est exécutée à chaque image calculée par le moteur
	var displacment : Vector2 = Vector2(0, 0) # Un vecteur qui illustre les input du joueur
	# Ce bloc permet de prendre les input du joueur
	if Input.is_action_pressed("ui_up"):
		displacment.y = -1
	if Input.is_action_pressed("ui_down"):
		displacment.y = 1
	if Input.is_action_pressed("ui_left"):
		displacment.x = -1
	if Input.is_action_pressed("ui_right"):
		displacment.x = 1
	displacment = displacment.normalized()*VELOCITY # Normalise le vecteur pour garder toujours la même vitesse et multiplie par la vélocité
	move_and_slide(displacment) # Déplace le personnage


func _on_DetectTasks_area_entered(area): # Cette fonction s'exécute quand le joueur détecte une tache
#	print("Thing detected")
	pass

func _on_DetectTasks_area_exited(area): # Cette fonction s'exécute quand le joueur sors de la zone de détection de la tache
#	print("Thing gone")
	pass
