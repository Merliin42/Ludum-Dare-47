tool
extends Area2D

export var texture : Texture

func _ready():
	$Sprite2.texture = texture
	$Sprite.texture = texture


func _on_Node2D_area_entered(area):
	$Sprite2.visible = true
	$ButtonIndicationA.visible = true

func _on_Node2D_area_exited(area):
	$Sprite2.visible = false
	$ButtonIndicationA.visible = false
