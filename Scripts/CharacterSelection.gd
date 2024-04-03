# CharacterSelection.gd
extends Control

func _ready():
	# Assuming you have buttons or some form of selection for each character
	$ManButton.connect("pressed", self, "_on_Man_selected")
	$DogButton.connect("pressed", self, "_on_Dog_selected")

func _on_Man_selected():
	Global.selected_character = "Man"
	_start_game()

func _on_Dog_selected():
	Global.selected_character = "Dog"
	_start_game()

func _start_game():
	# Change to your game's main scene
	get_tree().change_scene("res://MainGameScene.tscn")
