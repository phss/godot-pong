extends StaticBody2D
class_name Goal


signal goal_scored(ball)


@export var direction: Vector2


func ball_hit(ball: Ball, _collision: KinematicCollision2D):
	goal_scored.emit(ball)
	$GlowSprite.glow(Colors.current_paddle_color)
