extends CharacterBody2D
class_name Paddle

const height_to_angle_ration: float = 1.4
const max_random_angle_adjust: float = 10.0
const ball_speed_increase: float = 1.05

@export var speed: float = 1000
@onready var height: float = $GlowSprite.texture.get_height()
var vertical_movement: float
var color: Color


func _physics_process(_delta):
	velocity = Vector2(0, vertical_movement) * speed
	move_and_slide()
	

func move(movement: float):
	vertical_movement = movement


func ball_hit(ball: Ball, collision: KinematicCollision2D):
	var return_vector = collision.get_normal()
	
	if return_vector.y == 0:
		# Hit the side of the paddle
		$GlowSprite.glow(color)
		Colors.current_paddle_color = color
		
		var random_angle_adjust = randf_range(-max_random_angle_adjust, max_random_angle_adjust)
		var angle = (ball.global_position.y - global_position.y + random_angle_adjust) / height_to_angle_ration
		
		ball.direction = return_vector.rotated(deg_to_rad(angle * return_vector.x))	
		ball.speed *= ball_speed_increase
	else:
		# Hit the top/bottom of the paddle
		ball.direction = ball.direction.bounce(collision.get_normal())
		
