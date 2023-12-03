extends CanvasLayer


@onready var use_color: bool = $Popup/Menu/Color.toggle_mode
@onready var sound_volume: float = $Popup/Menu/SoundVolume.value
var master_bus_index: int = AudioServer.get_bus_index("Master")


func _on_sound_volume_value_changed(value):
	sound_volume = value
	AudioServer.set_bus_volume_db(master_bus_index, linear_to_db(sound_volume))


func _on_color_toggled(button_pressed):
	use_color = button_pressed


func _on_close_pressed():
	Options.hide()
