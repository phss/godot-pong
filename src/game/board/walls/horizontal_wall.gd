extends StaticBody2D


signal on_wall_hit(wall)


func glow(glow_color: Color):
	$GlowSprite.glow(glow_color)


func ball_hit(ball: Ball, collision: KinematicCollision2D):
	on_wall_hit.emit(self)
	ball.direction = ball.direction.bounce(collision.get_normal())
