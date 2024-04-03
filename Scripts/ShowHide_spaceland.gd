extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	_hide()

func _show():
	self.visible = true
	Global.at_portal = true

func _hide():
	self.visible = false


func _on_door_body_entered(body):
	if Global.dog_lost: 
		_show()


func _on_door_body_exited(body):
	_hide()

