extends CanvasLayer
class_name UI


func _ready():
	update_left_player_score(0)
	update_right_player_score(0)


func update_left_player_score(score: int, glow_color: Color = Color.BLACK):
	_update_score($LeftScore, score, glow_color)


func update_right_player_score(score: int, glow_color: Color = Color.BLACK):
	_update_score($RightScore, score, glow_color)	


func _update_score(label: Label, score: int, glow_color: Color):	
	if glow_color != Color.BLACK:
		var tween = create_tween()
		tween.tween_property(label, "modulate", glow_color, 1.0).set_trans(Tween.TRANS_QUAD)
		tween.tween_property(label, "modulate", label.modulate, 1.0)
	
	label.text = str(score)
