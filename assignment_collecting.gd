extends "res://assignment_base.gd"

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

# called by bee when in range
func bee_action_cbk():
	var gs = get_tree().get_root().get_node("/root/game_state")
	gs.food += 1
	gs.material += 1


func get_levelup_cost():
	return 0

func get_assignment_max():
	return 1

# path for assigned bees to follow
func get_path():
	return null


