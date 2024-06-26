extends RigidBody2D

# Direction + speed of sliding
var slide_direction = Vector2(1, 0)
var slide_speed = 100.0
var sliding = false

# Timer for sliding duration
var slide_timer = Timer.new()

func _ready():
	# Setup timer
	slide_timer.wait_time = 3.0 
	slide_timer.one_shot = true
	slide_timer.timeout.connect(_on_slide_timer_timeout)
	add_child(slide_timer)


func _integrate_forces(state):
	if sliding:
		linear_velocity = slide_direction.normalized() * slide_speed
	else:
		linear_velocity = linear_velocity.lerp(Vector2.ZERO, 0.05)

func _on_body_entered(body):
	if !sliding:
		sliding = true
		slide_timer.start() # Start the sliding timer

func _process(delta):
	if sliding:
		position += slide_direction.normalized() * slide_speed * delta

func _on_slide_timer_timeout():
	sliding = false
