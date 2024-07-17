extends Area2D


signal sf_trigger


var sf_available = false


func _on_mouse_entered():
	sf_available = true


func _on_mouse_exited():
	sf_available = false


func _on_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.pressed:
		if event.button_index == MOUSE_BUTTON_LEFT:
			emit_signal("sf_trigger")
