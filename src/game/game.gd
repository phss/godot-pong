extends Node2D

@export var left_player_color: Color = Color.CRIMSON
var left_player_score: int = 0

@export var right_player_color: Color = Color.ROYAL_BLUE
var right_player_score: int = 0

var current_glow_color: Color


func _ready():
	$Controllers/RightHumanPlayer.set_process(false)
	$Paddles/Left.color = left_player_color
	$Paddles/Right.color = right_player_color
	current_glow_color = $Paddles/Right.color
	
	
func _on_paused():
	get_tree().paused = true
	$PauseMenu.show()
	

func _on_unpaused():
	$PauseMenu.hide()
	get_tree().paused = false
	

func _on_paddle_hit(paddle: Paddle):
	current_glow_color = paddle.color
	paddle.glow(current_glow_color)


func _on_goal_scored(goal: Goal, ball: Ball):
	goal.glow(current_glow_color)
	$Sounds/Score.play()
	
	if goal.direction == Vector2.LEFT:
		right_player_score += 1
		$Score.update_right_player_score(right_player_score, current_glow_color)
	else:
		left_player_score += 1
		$Score.update_left_player_score(left_player_score, current_glow_color)
		
	ball.reset(goal.direction)


func _on_board_scenary_hit(scenary):
	scenary.glow(current_glow_color)
