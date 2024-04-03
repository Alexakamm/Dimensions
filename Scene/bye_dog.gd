extends AnimatedSprite2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = true
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_area_2d_body_entered(body):
	Global.dog_lost = true
	self.visible = false
	pass # Replace with function body.
