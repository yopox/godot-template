class_name Choice extends Node

@export var container: Container
@export var selected: int = 0
@export var vertical: bool = true

signal selection_updated


func _process(_delta):
	var old_selection = selected
	
	if vertical:
		if Input.is_action_just_pressed("up"):
			selected -= 1
		elif Input.is_action_just_pressed("down"):
			selected += 1
	else:
		if Input.is_action_just_pressed("left"):
			selected -= 1
		elif Input.is_action_just_pressed("right"):
			selected += 1
			
	if old_selection != selected:
		selection_updated.emit()


func get_selected_element() -> Node:
	selected = posmod(selected, container.get_child_count())
	return container.get_child(selected)
