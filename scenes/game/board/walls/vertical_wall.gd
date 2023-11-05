extends StaticBody2D


func ball_hit(ball: Ball, collision: KinematicCollision2D):
	ball.direction = ball.direction.bounce(collision.get_normal())
