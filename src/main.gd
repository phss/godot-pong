extends Node2D


var title: PackedScene = preload("res://src/title/title.tscn")
var game: PackedScene = preload("res://src/game/game.tscn")


func _ready():
	main_menu()


func start_game():
	get_tree().change_scene_to_packed(game)
	
	
func main_menu():
	get_tree().change_scene_to_packed(title)
