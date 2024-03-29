extends "res://assignment_base.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"


# called by bee when in range
func bee_action_cbk(bee):
	var gs = get_tree().get_root().get_node("/root/game_state")
	if (gs.weather == gs.NORMAL_WEATHER):
		gs.food += 2
		gs.material += 1
	elif (gs.weather == gs.GOOD_WEATHER):
		gs.food += 3
		gs.material += 2
	elif (gs.weather == gs.BAD_WEATHER):
		gs.food += 1
		gs.material += 0
	print("collect action")


func get_levelup_cost():
	return level * 4 * (floor(level/4)+1)

func get_assignment_max():
	return level * 2 + 2

func get_assigned():
	return get_tree().get_root().get_node("/root/game_state").collecting_bees

func get_assigned_goal():
	return get_tree().get_root().get_node("/root/game_state").goal_collecting_bees

func goal_assign():
	get_tree().get_root().get_node("/root/game_state").goal_collecting_bees += 1 # ToDo: controll max

func assign():
	get_tree().get_root().get_node("/root/game_state").collecting_bees += 1

func goal_unassign():
	get_tree().get_root().get_node("/root/game_state").goal_collecting_bees -= 1

func unassign():
	get_tree().get_root().get_node("/root/game_state").collecting_bees -= 1

# path for assigned bees to follow
func get_path():
	return get_node("Path2D")


