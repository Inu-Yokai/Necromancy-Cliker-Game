class_name Bug
extends Node2D


var bug_count = 0



func _ready():
	pass


func  _process(_delta):
	play_anim()


func play_anim():
	$AnimatedSprite2D.play("default")


func _on_bug_pressed():
	summon_bug()


func summon_bug():
	
	if Global.fragments >= 5:
		Global.fragments -= 5
		bug_count += 1
		%Bug_Amount.text = "X" + str(bug_count)
		Global.strength += Global.BugStats.strength
