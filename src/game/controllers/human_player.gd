extends Node2D

@export var up_input: StringName
@export var down_input: StringName
@export var paddle: Paddle


func _process(_delta):
	var movement = Input.get_axis(up_input, down_input)
	paddle.move(movement)
