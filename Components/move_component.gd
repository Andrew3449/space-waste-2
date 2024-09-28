class_name MoveComponent
extends Node

@export var move_input_component : MoveInputComponent
@export var player : Node2D
@export var accelerate_decelerate : Timer

func _physics_process(delta):
	move_input_component.get_input()
	if move_input_component.is_dragging:
		accelerate_decelerate.start()
		func _on_accelerate_decelerate_timeout() -> void:
			player.position = player.position.move_toward(get_viewport().get_mouse_position(), 2)
		
