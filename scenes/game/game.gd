extends Node2D


var left_player_score: int = 0
var right_player_score: int = 0


func _ready():
	$"Controllers/Right Human Player".set_process(false)


func _on_goal_scored(goal: Goal, ball: Ball):
	if goal.direction == Vector2.LEFT:
		right_player_score += 1
	else:
		left_player_score += 1
		
	$UI.update_scores(left_player_score, right_player_score)
	ball.reset(goal.direction)
