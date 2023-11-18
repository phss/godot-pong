extends Node2D


signal goal_scored(goal, ball)
signal on_wall_hit(wall)
signal on_segment_hit(segment)


func _on_goal_scored_on_left(ball: Ball):
	goal_scored.emit($Walls/LeftGoal, ball)


func _on_goal_scored_on_right(ball: Ball):
	goal_scored.emit($Walls/RightGoal, ball)


func _on_wall_hit(wall):
	on_wall_hit.emit(wall)
	
func _on_segment_hit(segment):
	on_segment_hit.emit(segment)
