extends Node2D


func _process(_delta):
	if Input.is_action_pressed("confirm"):
		Main.start_game()
