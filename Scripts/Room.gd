extends StaticBody2D



func _on_PlayerDetect_area_entered(area):
	self.modulate = Color(1, 1, 1, 1)


func _on_PlayerDetect_area_exited(area):
	self.modulate = Color(1, 1, 1, 0.3)
