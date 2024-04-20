extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	self.visible = false


func _show():
	self.visible = true


func _on_rich_text_label_2_pressed():
	_show()
