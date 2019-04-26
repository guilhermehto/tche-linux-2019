extends Node2D

export var speed := 750.0

var direction : Vector2


func _ready() -> void:
	set_as_toplevel(true)


func initialize(_direction: Vector2) -> void:
	direction = _direction


func _process(delta: float) -> void:
	position += speed * direction * delta
