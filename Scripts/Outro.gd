extends Sprite


func _ready():
	$Tween.interpolate_property(self, "modulate", Color(0, 0, 0, 1), Color(1, 1, 1, 1), 1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Tween.start()
