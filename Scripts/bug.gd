extends Node2D

var bug_stats : Bug_Stats
var bug_count = null
var soul_fragment : SoulFragment

func _ready():
	pass


func  _process(_delta):
	play_anim()


func play_anim():
	$AnimatedSprite2D.play("default")


func _on_bug_pressed():
	summon_bug()


func summon_bug():
	if soul_fragment.sf_amount >= 5:
		soul_fragment.sf_amount -= 5
		bug_count += 1
