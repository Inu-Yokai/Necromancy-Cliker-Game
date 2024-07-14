extends Node2D


var rat_count = 0


func _on_rat_pressed():
	summon_rat()


func summon_rat():
	if Global.fragments >= 10:
		Global.fragments -= 10
		rat_count += 1
		$Rat_Amount.text = "X" + str(rat_count)
		Global.strength += Global.RatStats.strength

