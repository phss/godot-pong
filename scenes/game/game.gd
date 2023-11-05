extends Node2D


var left_player_score: int = 0
var right_player_score: int = 0


func _on_goal_scored(goal: Goal, ball: Ball):
	if goal.direction == Vector2.LEFT:
		right_player_score += 1
	else:
		left_player_score += 1
		
	ball.reset(goal.direction)
