extends Node2D


@export var stats : UNDEAD_MOBS


func _ready():
	$Wolf_Amount.text = "X %d" % stats.number


func _on_wolf_pressed():
	summon_wolf()


func summon_wolf():
	# Added a passthrough common function to check if enough sf to summon.
	# If true will update strength
	# Can be copy pasted to each mob to reference base function.
	var summon = get_tree().get_root().get_node("Game").summon_mob(stats.cost)
	if summon == true:
		#var power_up = get_tree().get_root().get_node("Game").update_strength(stats.strength)
		stats.number += 1 # Will need to update the '1' to a constant value so we can have variable summons
		$Wolf_Amount.text = "X %d" % stats.number
	else:
		print("Not Enough")

