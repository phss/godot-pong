extends CharacterBody2D
class_name Ball


@export var speed: int = 1000
var direction: Vector2 = Vector2.LEFT


func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision and "ball_hit" in collision.get_collider():
		collision.get_collider().ball_hit(self, collision)

