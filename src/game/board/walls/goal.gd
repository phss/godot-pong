extends StaticBody2D
class_name Goal


signal goal_scored(ball)


@export var direction: Vector2


func glow(glow_color: Color):
	$GlowSprite.glow(glow_color)


func ball_hit(ball: Ball, _collision: KinematicCollision2D):
	goal_scored.emit(ball)
