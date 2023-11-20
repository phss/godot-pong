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
