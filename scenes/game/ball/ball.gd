extends CharacterBody2D


@export var speed: int = 1000
var direction: Vector2 = Vector2(5, 1).normalized()


func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision:
		direction = direction.bounce(collision.get_normal())
