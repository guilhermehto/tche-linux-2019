extends Position2D

onready var timer : Timer = $Timer

export var fire_rate := 2
export var bullet : PackedScene


func _ready() -> void:
	timer.wait_time = 1.0 / fire_rate


func _process(delta: float) -> void:
	if Input.is_action_pressed("shoot") and timer.is_stopped():
		shoot()


func shoot() -> void:
	timer.start()
	var direction := (get_global_mouse_position() - global_position).normalized()
	var new_bullet := bullet.instance()
	add_child(new_bullet)
	new_bullet.global_position = global_position
	new_bullet.initialize(direction)
