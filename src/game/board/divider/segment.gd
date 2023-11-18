extends Area2D
class_name Segment


signal on_segment_hit(segment)


func glow(glow_color: Color):
	$GlowSprite.glow(glow_color)
	

func _on_body_entered(_body):
	on_segment_hit.emit(self)
