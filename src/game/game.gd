extends Node2D

@export var left_player_color: Color = Color.CRIMSON
var left_player_score: int = 0

@export var right_player_color: Color = Color.ROYAL_BLUE
var right_player_score: int = 0


func _ready():
	$"Controllers/Right Human Player".set_process(false)
	$Paddles/Left.color = left_player_color
	$Paddles/Right.color = right_player_color
	Colors.current_paddle_color = Color.BLACK


func _on_goal_scored(goal: Goal, ball: Ball):
	if goal.direction == Vector2.LEFT:
		right_player_score += 1
		$UI.update_right_player_score(right_player_score)
	else:
		left_player_score += 1
		$UI.update_left_player_score(left_player_score)
		
	ball.reset(goal.direction)
