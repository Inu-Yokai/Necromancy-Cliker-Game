extends Control


@export var currency_army : Economy

@onready var strength_amount = currency_army.strength
@onready var soul_fragment_amount = currency_army.fragments

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
	strength_amount = currency_army.strength
	strength_label.text = "Army Strength: %.2f" % strength_amount


func update_soul_fragment(): # Call when needing to update Soul Fragment
	soul_fragment_amount = currency_army.fragments
	sf_label.text = "Soul Fragments: %d" % soul_fragment_amount
