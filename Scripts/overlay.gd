extends Control


#@onready var strength_amount = null # Replace with army strength variable. Update line 18 also
#@onready var soul_fragment_amount = souls.sf_amount # Replace with soul fragment variable. Update line 22 also

@onready var strength_label = $"VBoxContainer/Army Strength"
@onready var sf_label = $"VBoxContainer/Soul Fragment"


func _ready():
	strength_label.text = "Army Strength: %d" % Global.strength
	sf_label.text = "Soul Fragments: %d" % Global.fragments


func _process(delta):
	update_soul_fragment()
	update_army()


# Update both the strength and soul fragment count
func update_army(): # Call when needing to update strength of Army
	var strength_amount = Global.strength
	strength_label.text = "Army Strength: %d" % strength_amount

func update_soul_fragment(): # Call when needing to update Soul Fragment
	var soul_fragment_amount = Global.fragments
	sf_label.text = "Soul Fragments: %d" % soul_fragment_amount

