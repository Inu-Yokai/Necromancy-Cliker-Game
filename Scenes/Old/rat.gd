extends Node2D



var rat_count = 0

var id: String = "rt"
var mob_name: String = "rat"
var strength: float = .1
var summon_time: float = 10.0
var number: int = 0
var cost: int = 10
var summon_level: int = 0


func _on_rat_pressed():
	summon_rat()


func summon_rat():
	# Added a passthrough common function to check if enough sf to summon.
	# If true will update strength
	# Can be copy pasted to each mob to reference base function.
	var summon = get_tree().get_root().get_node("Game").summon_mob(cost)
	if summon == true:
		var power_up = get_tree().get_root().get_node("Game").update_strength(strength)
		number += 1 # Will need to update the '1' to a constant value so we can have variable summons
		%Rat_Amount.text = "X %d" % number
	else:
		print("Not Enough")
