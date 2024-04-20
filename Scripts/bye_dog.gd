extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	pass # Replace with function body.


func _on_area_2d_body_entered(_body):
	Global.dog_lost = true
	self.visible = false
	pass # Replace with function body.
