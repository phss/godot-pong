extends Node2D


const diff_multiplier: float = 100.0

@export var paddle: Paddle
@export var ball: Ball


func _process(_delta):
	var diff = ball.position.y - paddle.position.y	
	paddle.speed = min(abs(diff) * diff_multiplier, 1000)
	
	if diff > 0.0:
		paddle.move(Vector2.DOWN.y)
	elif diff < -0.0:
		paddle.move(Vector2.UP.y)
