extends CharacterBody2D

var player = null
# Speed at which the enemy moves
var speed = 100
var is_alive = true
	
func _process(delta):
	if not is_alive:
		return
	if player != null:
		var direction = Vector2(player.position.x - position.x, 0).normalized()
		position -= direction * speed * delta
		if $AnimatedSprite2D.animation != "swing":
			$AnimatedSprite2D.play("swing")
	else: 
		if $AnimatedSprite2D.animation != "idle":
			$AnimatedSprite2D.play("idle")


func _on_player_detector_body_entered(body):
	#$AnimatedSprite2D.stop()
	player = body
	pass # Replace with function body.


func _on_player_detector_body_exited(body):
	player = null
	pass # Replace with function body.

func _on_animated_sprite_2d_animation_finished():
	if $AnimatedSprite2D.animation == "swing":
		get_tree().reload_current_scene() #restart
	if $AnimatedSprite2D.animation == "die":
		self.queue_free()

func _kill():
	is_alive = false
	$AnimatedSprite2D.play("die")

func _on_player_detector_input_event(viewport, event, shape_idx):
	if Input.is_action_pressed("left_click"):
		_kill()
	pass # Replace with function body.
