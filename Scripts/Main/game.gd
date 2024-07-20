extends Node2D


signal update_sf
signal strength_up


# Created base summon mob function for all mobs. Just pass along mob costs
func summon_mob(mob_cost):
	if Global.fragments >= mob_cost:
		Global.fragments -= mob_cost
		emit_signal("update_sf") # Emits to Overlay to update SF count.
		return true


func update_strength(power) -> void:
	Global.strength += power
	emit_signal("strength_up") #Emits to Overlay to update Army Strength


func _on_gravesite_sf_trigger() -> void: # Recieved from Gravesite when clicked.
	Global.fragments += 1
	emit_signal("update_sf") # Emits to Overlay to increase SF count
