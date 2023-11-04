extends Node2D


var game: PackedScene = preload("res://scenes/game/game.tscn")


func _ready():
	get_tree().change_scene_to_packed(game)
