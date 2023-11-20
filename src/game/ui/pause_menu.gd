extends CanvasLayer


signal paused()
signal unpaused()


func _on_visibility_changed():
	if visible:
		$Menu/Reset.grab_focus()
		

func _process(_delta):
	if Input.is_action_just_released("pause"):
		if visible:
			unpaused.emit()	
		else:
			paused.emit()


func _on_reset_pressed():
	unpaused.emit()
	Main.start_game()


func _on_main_menu_pressed():
	unpaused.emit()
	Main.main_menu()


func _on_exit_pressed():
	get_tree().quit()
