extends Node


signal update_battle
signal end_game


var currency_army : Economy


var player_roll : float
var enemy_roll : float
var player_win :bool
var damage : float


func battle(player_army, enemy_army):
	get_node("Battle Bars").bar_ready(player_army, enemy_army)
	# Minimum threshold first
	var player_total = player_army
	var player_floor = min_thresh(player_army)
	var enemy_floor = min_thresh(enemy_army)
	await get_tree().create_timer(3.0).timeout
	# Continue until either army is at or below 0
	while player_army >= 0 and enemy_army >= 0:
		player_roll = randf_range(player_floor, player_army)
		enemy_roll = randf_range(enemy_floor, enemy_army)
		if player_roll > enemy_roll:
			damage = snapped(player_roll - enemy_roll, 0.01)
			enemy_army -= damage
			player_army -= snapped(damage / 4, 1)
		elif player_roll < enemy_roll:
			damage = snapped(enemy_roll - player_roll, 0.01)
			player_army -= damage
		else:
			player_army -= player_floor
			enemy_army -= enemy_floor
		print(damage)
		get_node("Battle Bars")._on_update_battle(player_army, enemy_army)
			#Update Bars
		print("Player total: ",player_army, " Enemy total: ",enemy_army)
		await get_tree().create_timer(8.0).timeout
	if player_army <= 0:
		player_win = false
		emit_signal("end_game", player_win, player_total)
	else:
		player_win = true
		player_total -= player_army
		emit_signal("end_game", player_win, player_total)


func min_thresh(army):
	# Creates a minimum amount to modify roll range and set least damage amount.
	var army_floor = army * .4
	return snapped(army_floor, 0.01)
