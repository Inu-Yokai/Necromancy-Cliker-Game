extends Control


@onready var strength_amount = Global.strength
@onready var soul_fragment_amount = Global.fragments 

@onready var strength_label = $"VBoxContainer/Army Strength"
@onready var sf_label = $"VBoxContainer/Soul Fragment"


func _ready():
	strength_label.text = "Army Strength: %d" % strength_amount
	sf_label.text = "Soul Fragments: %d" % soul_fragment_amount


func update_lables():
	update_soul_fragment()
	update_army()


# Update both the strength and soul fragment count
func update_army(): # Call when needing to update strength of Army
	var strength_amount = Global.strength
	strength_label.text = "Army Strength: %.2f" % strength_amount


func update_soul_fragment(): # Call when needing to update Soul Fragment
	var soul_fragment_amount = Global.fragments
	sf_label.text = "Soul Fragments: %d" % soul_fragment_amount
