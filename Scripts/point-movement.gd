extends CharacterBody2D

const SPEED = 300.0


func _ready():
	self.velocity = Vector2(0,0)

func _physics_process(delta):
	var direction_x = Input.get_axis("ui_left", "ui_right")
	var direction_y = Input.get_axis("ui_up", "ui_down")
	
	# Update the velocity based on the input direction.
	velocity.x = direction_x * SPEED
	velocity.y = direction_y * SPEED
	
	# Move the character.
	move_and_slide()
