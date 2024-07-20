extends Area2D


signal sf_trigger


# If left mouse is clicked and inside Area2d then triggers signal.
func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			emit_signal("sf_trigger") # Connected to Game node | func _on_gravesite_sf_trigger
