extends Node2D
class_name GAME


## Economy
@export var currency_army : Economy


## Summons
@export var bug_path : UNDEAD_MOBS
@export var rat_path : UNDEAD_MOBS
@export var rabbit_path : UNDEAD_MOBS
@export var crow_path : UNDEAD_MOBS
@export var cat_path : UNDEAD_MOBS
@export var wolf_path : UNDEAD_MOBS
@export var skeleton_path : UNDEAD_MOBS
@export var spirit_path : UNDEAD_MOBS


## Singleton Reference.
static  var ref : GAME


signal update_sf
signal strength_up

## Singleton Check.
func _singelton_check() -> void:
	if not ref:
		ref = self
		return
		
	queue_free()
	
	
	## Singleton Check and Data Initalization.
func _enter_tree() -> void:
	_singelton_check()
	currency_army = Economy.new()
	
	bug_path = UNDEAD_MOBS.new()
	rat_path = UNDEAD_MOBS.new()
	rabbit_path = UNDEAD_MOBS.new()
	crow_path = UNDEAD_MOBS.new()
	cat_path = UNDEAD_MOBS.new()
	wolf_path = UNDEAD_MOBS.new()
	skeleton_path = UNDEAD_MOBS.new()
	spirit_path = UNDEAD_MOBS.new()
	
	SaveGame.load_data()


func _ready():
	update_strength(0)


# Created base summon mob function for all mobs. Just pass along mob costs
func summon_mob(mob_cost):
	if currency_army.fragments >= mob_cost:
		currency_army.fragments -= mob_cost
		emit_signal("update_sf") # Emits to Overlay to update SF count.
		return true


func update_strength(power) -> void:
	currency_army.strength += power
	emit_signal("strength_up") #Emits to Overlay to update Army Strength


func _on_gravesite_sf_trigger() -> void: # Recieved from Gravesite when clicked.
	currency_army.fragments += 1
	emit_signal("update_sf") # Emits to Overlay to increase SF count


func _on_auto_save_timer_timeout():
	SaveGame.save_data()
	print("GAME SAVED")


