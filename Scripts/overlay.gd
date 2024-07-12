extends Control


@onready var strength_amount = null # Replace with army strength variable. Update line 18 also
@onready var soul_fragment_amount = null # Replace with soul fragment variable. Update line 22 also

@onready var strength_label = $"VBoxContainer/Army Strength"
@onready var sf_label = $"VBoxContainer/Soul Fragment"


func _ready():
	strength_label.text = "Army Strength: " % strength_amount
	sf_label.text = "Soul Fragments: " % soul_fragment_amount


# Update both the strength and soul fragment count
func update_army(): # Call when needing to update strength of Army
	strength_amount = null
	strength_label.text = "Army Strength: " % strength_amount

func update_soul_fragment(): # Call when needing to update Soul Fragment
	soul_fragment_amount = null
	sf_label.text = "Soul Fragments: " % soul_fragment_amount
