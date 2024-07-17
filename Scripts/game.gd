extends Node2D


signal update_sf


# Created base summon mob function for all mobs. Just pass along mob costs
func summon_mob(mob_cost):
	if Global.fragments >= mob_cost:
		Global.fragments -= mob_cost
		emit_signal("update_sf")
		return true


func _on_gravesite_sf_trigger():
	Global.fragments += 1
	emit_signal("update_sf")
