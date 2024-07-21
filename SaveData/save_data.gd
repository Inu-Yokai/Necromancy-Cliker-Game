class_name SaveGame
## Save System Code


## Save Path
## Economy
const currency_army_path : String = "res://Scripts/Main/Economy/economy_res.tres"
## Summons
const summon_save_bug_path : String = "res://resources/Summons/bug_stats_2.tres"
const summon_save_rat_path : String = "res://resources/Summons/rat_stats_2.tres"
const summon_save_rabbit_path : String = "res://resources/Summons/rabbit_stats.tres"
const summon_save_cat_path : String = "res://resources/Summons/cat_stats.tres"
const summon_save_crow_path : String = "res://resources/Summons/crow_stats.tres"
const summon_save_wolf_path : String = "res://resources/Summons/wolf_stats.tres"
const summon_save_skeleton_path : String = "res://resources/Summons/skeleton_stats.tres"
const summon_save_spirit_path : String = "res://resources/Summons/spirit_stats.tres"


## Checks if Game should be Loaded.
const SHOULD_LOAD : bool = true 


## Saves Game.
static func save_data() -> void:
	ResourceSaver.save(GAME.ref.currency_army, currency_army_path)
	
	ResourceSaver.save(GAME.ref.bug_path, summon_save_bug_path)
	ResourceSaver.save(GAME.ref.rat_path, summon_save_rat_path)
	ResourceSaver.save(GAME.ref.rabbit_path, summon_save_rabbit_path)
	ResourceSaver.save(GAME.ref.crow_path, summon_save_crow_path)
	ResourceSaver.save(GAME.ref.cat_path, summon_save_cat_path)
	ResourceSaver.save(GAME.ref.wolf_path, summon_save_wolf_path)
	ResourceSaver.save(GAME.ref.skeleton_path, summon_save_skeleton_path)
	ResourceSaver.save(GAME.ref.spirit_path, summon_save_spirit_path)


## Loads Game.
static func load_data() -> void:
	if not SHOULD_LOAD:
		return
		
	if ResourceLoader.exists(currency_army_path):
		GAME.ref.currency_army = load(currency_army_path)
		
	if ResourceLoader.exists(summon_save_bug_path):
		GAME.ref.bug_path = load(summon_save_bug_path)
	if ResourceLoader.exists(summon_save_rat_path):
		GAME.ref.rat_path = load(summon_save_rat_path)
	if ResourceLoader.exists(summon_save_rabbit_path):
		GAME.ref.rabbit_path = load(summon_save_rabbit_path)
	if ResourceLoader.exists(summon_save_crow_path):
		GAME.ref.crow_path = load(summon_save_crow_path)
	if ResourceLoader.exists(summon_save_cat_path):
		GAME.ref.cat_path = load(summon_save_cat_path)
	if ResourceLoader.exists(summon_save_wolf_path):
		GAME.ref.wolf_path = load(summon_save_wolf_path)
	if ResourceLoader.exists(summon_save_skeleton_path):
		GAME.ref.skeleton_path = load(summon_save_skeleton_path)
	if ResourceLoader.exists(summon_save_spirit_path):
		GAME.ref.spirit_path = load(summon_save_spirit_path)

