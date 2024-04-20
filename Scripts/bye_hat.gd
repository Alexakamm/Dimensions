extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	pass # Replace with function body.

func _on_lose_hat_body_entered(_body):
	self.visible = false
	pass # Replace with function body.
