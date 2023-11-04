extends CharacterBody2D
class_name Paddle

@export var speed: int = 500
var vertical_movement: float


func _process(_delta):
	velocity = Vector2(0, vertical_movement) * speed
	move_and_slide()
	

func move(movement: float):
	vertical_movement = movement
