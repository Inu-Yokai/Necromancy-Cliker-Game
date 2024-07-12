extends Node


var soul_shards : int = 0
var bug_count : int = 0
var mouse_count : int = 0


func _process(delta):
	access_summons()
	quit_to_title()


func _on_button_pressed():
	soul_shards += 1
	%Soul_Shards.text = "Soul Shards: " + str(soul_shards)


func access_summons():
	if soul_shards >= 10:
		$Necromancer_Area/BoxContainer/Bug.visible = true
		$Necromancer_Area/BoxContainer/Bug.disabled = false
	if soul_shards >= 50:
		$Necromancer_Area/BoxContainer2/Mouse.visible = true
		$Necromancer_Area/BoxContainer2/Mouse.disabled = false


func buy_bug():
	if soul_shards >= 10:
		soul_shards -= 10
		%Soul_Shards.text = "Soul Shards: " + str(soul_shards)
		bug_count += 1
		$Necromancer_Area/BoxContainer/Bug/bug_count.text = str(bug_count)


func bug_shards():
	if bug_count >= 5:
		soul_shards += 1
		%Soul_Shards.text = "Soul Shards: " + str(soul_shards)


func buy_mouse():
	if soul_shards >= 50:
		soul_shards -= 50
		%Soul_Shards.text = "Soul Shards: " + str(soul_shards)
		mouse_count += 1
		$Necromancer_Area/BoxContainer2/Mouse/mouse_count.text = str(mouse_count)


func mouse_shards():
	if mouse_count >= 10:
		soul_shards += 2
		%Soul_Shards.text = "Soul Shards: " + str(soul_shards)


#Allows user to quit at any time during game
func quit_to_title():
	if Input.is_action_just_pressed("quit"):
		get_tree().change_scene_to_file("res://main_menu.tscn")

