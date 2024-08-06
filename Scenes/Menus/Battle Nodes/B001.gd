extends Button


@export var town_resource = TOWNS


func _ready():
	var button = $"."
	button.text = town_resource.town_name
	button.pressed.connect(press_battle)


func press_battle():
	get_tree().get_root().get_node("Game")._town_check(town_resource)
