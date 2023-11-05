extends CanvasLayer
class_name UI


func _ready():
	update_left_player_score(0)
	update_right_player_score(0)


func update_left_player_score(score: int):
	_update_score($"Left Score", score)


func update_right_player_score(score: int):
	_update_score($"Right Score", score)	


func _update_score(label: Label, score: int):
	var tween = create_tween()
	tween.tween_property(label, "modulate", Colors.current_paddle_color, 1.0).set_trans(Tween.TRANS_QUAD)
	tween.tween_property(label, "modulate", label.modulate, 1.0)
	
	label.text = str(score)
