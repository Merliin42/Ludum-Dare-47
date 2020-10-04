extends StaticBody2D



func _on_WallLeftDetector_area_entered(area):
	$WallLeft.modulate = Color(1, 1, 1, .3)


func _on_WallLeftDetector_area_exited(area):
	$WallLeft.modulate = Color(1, 1, 1, 1)


func _on_WallRightDetector_area_entered(area):
	$WallRight.modulate = Color(1, 1, 1, .3)


func _on_WallRightDetector_area_exited(area):
	$WallRight.modulate = Color(1, 1, 1, 1)
