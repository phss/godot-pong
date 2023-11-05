extends Sprite2D
class_name GlowSprite


func glow(color: Color):
	var tween = create_tween()
	tween.tween_property(self, "modulate", color, 0.3).set_trans(Tween.TRANS_QUAD)
	tween.tween_property(self, "modulate", modulate, 0.2)
