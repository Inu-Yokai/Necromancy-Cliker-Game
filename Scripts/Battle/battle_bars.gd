extends Control


@onready var player_bar = $"MarginContainer/HBoxContainer/Player Army"
@onready var enemy_bar = $"MarginContainer/HBoxContainer/Enemy Army"


func bar_ready(player_max, enemy_max):
	player_bar.max_value = player_max
	enemy_bar.max_value = enemy_max
	player_bar.value = player_max
	enemy_bar.value = enemy_max
	print("Max Bar", player_bar.max_value, enemy_bar.max_value)

func _on_update_battle(player, enemy): # Connects to Battle Node.
	player_bar.value = player
	enemy_bar.value = enemy
