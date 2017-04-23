extends "res://assignment_base.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var spawn_cooldown = 10

func bee_action_cbk( bee ):
	var gs = get_tree().get_root().get_node("/root/game_state")
	if (gs.food > 2):
		gs.food -= 3
		spawn_cooldown -= 1
		if (spawn_cooldown <= 0):
			gs.free_bees += 1
			spawn_cooldown = 10
	else:
		unassign()
		bee.queue_free()
	print("build action")


func get_levelup_cost():
	return level * 4 * (floor(level/4)+1)

func get_assignment_max():
	return level * 2 + 2

func get_assigned():
	return get_tree().get_root().get_node("/root/game_state").building_bees

func get_assigned_goal():
	return get_tree().get_root().get_node("/root/game_state").goal_building_bees

func goal_assign():
	get_tree().get_root().get_node("/root/game_state").goal_building_bees += 1 # ToDo: controll max

func assign():
	get_tree().get_root().get_node("/root/game_state").building_bees += 1

func goal_unassign():
	get_tree().get_root().get_node("/root/game_state").goal_building_bees -= 1

func unassign():
	get_tree().get_root().get_node("/root/game_state").building_bees -= 1

# path for assigned bees to follow
func get_path():
	return get_node("Path2D")