extends Area2D
class_name Segment


func _on_body_entered(_body):
	$GlowSprite.glow(Colors.current_paddle_color)
