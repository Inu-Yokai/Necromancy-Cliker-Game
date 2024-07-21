extends Node2D


var bug_count = 0

var id: String = "bg"
var mob_name: String = "bug"
var strength: float = .01
var summon_time: float = 5.0
var number: int = 0
var cost: int = 5
var summon_level: int = 0


func  _process(_delta):
	play_anim()


func play_anim():
	$AnimatedSprite2D.play("default")


func _on_bug_pressed():
	summon_bug()


func summon_bug():
	# Added a passthrough common function to check if enough sf to summon.
	# If true will update strength
	# Can be copy pasted to each mob to reference base function.
	var summon = get_tree().get_root().get_node("Game").summon_mob(cost)
	if summon == true:
		var power_up = get_tree().get_root().get_node("Game").update_strength(strength)
		number += 1 # Will need to update the '1' to a constant value so we can have variable summons
		%Bug_Amount.text = "X %d" % number
	else:
		print("Not Enough")
