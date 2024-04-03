extends Area2D

func climb(body):
	if(body.is_in_group("Climber")):
		if !body.climbing:
			body.climbing = true
			
func stop_climb(body):
	if(body.is_in_group("Climber")):
		if body.climbing:
			body.climbing = false

func _on_body_entered(body):
	climb(body)


func _on_body_exited(body):
	stop_climb(body)


func _on_ladder_2_body_entered(body):
	climb(body)


func _on_ladder_2_body_exited(body):
	stop_climb(body)
