extends CanvasLayer
class_name UI


func _ready():
	update_scores(0, 0)


func update_scores(left: int, right: int):
	$"Left Score".text = str(left)
	$"Right Score".text = str(right)
