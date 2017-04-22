extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var goal = 0
var level = 0

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

# called by bee when in range
func bee_action_cbk():
	pass


func get_levelup_cost():
	return 0

func get_assignment_max():
	return 1

# path for assigned bees to follow
func get_path():
	return null

func is_in_range(pos):
	var vec = pos - get_pos()
	if ( vec.length_squared() < 10.0 ):
		return true
	return false