extends Button


@export var town_resource = TOWNS


func _ready():
	var button = $"."
	var upper_node = get_tree().get_root().get_node("Game")
	button.pressed.connect(upper_node, "_town_check")
