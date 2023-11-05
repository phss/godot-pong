extends Node2D



func _on_goal_scored(goal: Goal, ball: Ball):
	ball.reset(goal.direction)
