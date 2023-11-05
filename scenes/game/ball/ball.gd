extends CharacterBody2D
class_name Ball


const max_random_angle_adjust: float = 5.0


@export var start_speed: float = 800

var speed: float
var direction: Vector2


func _ready():
	reset(Vector2.LEFT)


func _physics_process(delta):
	var collision = move_and_collide(direction * speed * delta)
	if collision and "ball_hit" in collision.get_collider():
		collision.get_collider().ball_hit(self, collision)
		print(speed)


func reset(initial_direction: Vector2):
	var inital_rand_angle = randf_range(-max_random_angle_adjust, max_random_angle_adjust)
	direction = initial_direction.rotated(deg_to_rad(inital_rand_angle))
	speed = start_speed
