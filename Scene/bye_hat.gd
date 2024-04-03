extends Sprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_lose_hat_body_entered(body):
	self.visible = false
	pass # Replace with function body.
