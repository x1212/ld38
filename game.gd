extends Node

func _ready():
	var gs = get_tree().get_root().get_node("/root/game_state")
	gs.weather = gs.NORMAL_WEATHER
	gs.food = 5
	gs.material = 0
	gs.free_bees = 10
	gs.collecting_bees = 0
	gs.guarding_bees = 0
	gs.building_bees = 0
	gs.goal_collecting_bees = 0
	gs.goal_guarding_bees = 0
	gs.goal_building_bees = 0
