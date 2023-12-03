extends Sprite2D
class_name GlowSprite


@onready var initial_color: Color = modulate


func glow(color: Color):
	if Options.use_color:
		var tween = create_tween()
		tween.tween_property(self, "modulate", color, 0.3).set_trans(Tween.TRANS_QUAD)
		tween.tween_property(self, "modulate", initial_color, 0.2)
