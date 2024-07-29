extends Control


@onready var player_bar = $"MarginContainer/HBoxContainer/Player Army"
@onready var enemy_bar = $"MarginContainer/HBoxContainer/Enemy Army"
@onready var player_max = get_parent().player_army
@onready var enemy_max = get_parent().enemy_army


func _ready():
	player_bar.max_value = player_max
	enemy_bar.max_value = enemy_max
	player_bar.value = player_max
	enemy_bar.value = enemy_max

func _on_update_battle(): # Connects to Battle Node.
	player_bar.value = get_parent().player_army
	enemy_bar.value = get_parent().enemy_army
