extends Node2D


func _ready():
	$UI/Options/Start.grab_focus()


func _on_start_pressed():
	Main.start_game()


func _on_exit_pressed():
	get_tree().quit()
