class_name MoveInputComponent
extends Node

var is_dragging = false

@onready var transform = $Transform2D
var target = Vector2.ZERO

func get_input():
	if Input.is_action_pressed("move"):
		is_dragging = true
		target = get_viewport().get_mouse_position()
	if Input.is_action_just_released("move"):
		is_dragging = false
