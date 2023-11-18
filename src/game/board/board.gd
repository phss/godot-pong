extends Node2D


signal goal_scored(goal, ball)


func _on_goal_scored_on_left(ball: Ball):
	goal_scored.emit($Walls/LeftGoal, ball)


func _on_goal_scored_on_right(ball: Ball):
	goal_scored.emit($Walls/RightGoal, ball)

