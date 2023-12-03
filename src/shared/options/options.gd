extends CanvasLayer


var options = ConfigFile.new()
var use_color: bool
var sound_volume: float
var master_bus_index: int = AudioServer.get_bus_index("Master")


func _ready():
	options.load("user://options.cfg")
	use_color = options.get_value("main", "use_color", $Popup/Menu/Color.toggle_mode)
	sound_volume = options.get_value("main", "sound_volume", $Popup/Menu/SoundVolume.value)
	$Popup/Menu/Color.button_pressed = use_color
	$Popup/Menu/SoundVolume.value = sound_volume


func _on_sound_volume_value_changed(value):
	sound_volume = value
	options.set_value("main", "sound_volume", sound_volume)
	AudioServer.set_bus_volume_db(master_bus_index, linear_to_db(sound_volume))


func _on_color_toggled(button_pressed):
	use_color = button_pressed
	options.set_value("main", "use_color", use_color)


func _on_close_pressed():
	options.save("user://options.cfg")
	Options.hide()
