extends Area2D

onready var iteration = get_node("/root/GlobalVar").iterations
export var texture : Texture

func _ready():
	$Sprite2.texture = texture
	$Sprite.texture = texture


func _on_Node2D_area_entered(area):
	$Sprite2.visible = true
	$ButtonIndicationA.visible = true
	if iteration >= 4 and self.name != "Mary" :
		$ButtonIndicationE.visible = true

func _on_Node2D_area_exited(area):
	$Sprite2.visible = false
	$ButtonIndicationA.visible = false
	if iteration >= 4 and self.name != "Mary" :
		$ButtonIndicationE.visible = false
