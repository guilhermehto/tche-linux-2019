extends KinematicBody2D


export var move_speed := 150.0


func _physics_process(delta: float) -> void:
	var motion := Vector2(int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left")), 
		int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up")))
	
	var velocity := motion.normalized() * move_speed
	
	look_at(get_global_mouse_position())
	
	var direction := (get_global_mouse_position() - global_position).normalized()
	
	move_and_slide(velocity)
