# DimensionController.gd
extends Node

var current_dimension = "Spaceland" # Start dimension

func shift_dimension(new_dimension):
	current_dimension = new_dimension
	# Here you would add the logic to change game mechanics based on the dimension
	# This could include changing player abilities, altering the environment, etc.
	print("Shifted to ", new_dimension)
	# Example: Adjusting the game world's physics properties or player's speed/abilities
