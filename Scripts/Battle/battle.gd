extends Node


signal update_battle
signal end_game


var currency_army : Economy


var player_roll : float
var enemy_roll : float
var player_win :bool


func battle(player_army, enemy_army):
	get_node("Battle Bars").bar_ready(player_army, enemy_army)
	# Minimum threshold first
	var player_total = player_army
	var player_floor = min_thresh(player_army)
	var enemy_floor = min_thresh(enemy_army)
	await get_tree().create_timer(3.0).timeout
	# Continue until either army is at or below 0
	while player_army >= 0 or enemy_army >= 0:
		player_roll = randf_range(player_floor, player_army)
		print("Player Roll:",player_roll)
		enemy_roll = randf_range(enemy_floor, enemy_army)
		print("Enemy Roll: ", enemy_roll)
		if player_roll > enemy_roll:
			enemy_army -= player_army
		elif player_roll < enemy_roll:
			player_army -= enemy_army
		else:
			player_army -= player_floor
			enemy_army -= enemy_floor
			#Update Bars
		print("Player total: ",player_army, " Enemy total: ",enemy_army)
		await get_tree().create_timer(10.0).timeout
	if player_army <= 0:
		player_win = false
		emit_signal("end_game", player_win, player_total)
	else:
		player_win = true
		player_total -= player_army
		emit_signal("end_game", player_win, player_total)


func min_thresh(army):
	# Creates a minimum amount to modify roll range and set least damage amount.
	var army_floor = army * .1
	return army_floor


func timer_2():
	var timer = Timer.new()
	timer.wait_time = 3
	timer.one_shot = true

