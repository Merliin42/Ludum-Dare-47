tool
extends Area2D

export var texture : Texture

func _ready():
	$Sprite2.texture = texture
	$Sprite.texture = texture


func _on_Node2D_area_entered(area):
	$SpriteA.visible = true
	$ButtonIndication.visible = true

func _on_Node2D_area_exited(area):
	$SpriteA.visible = false
	$ButtonIndication.visible = false
