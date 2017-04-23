extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var bee_scene = preload("res://bee.tscn")

var goal = 0
var level = 1

func _ready():
	set_process( true )
	pass

func _process(delta):
	#print("!")
	var gs = get_tree().get_root().get_node("/root/game_state")
	if ( get_assigned() < get_assigned_goal() ):
		if ( gs.free_bees > 0 ):
			gs.free_bees -= 1
			assign()
			var bee = bee_scene.instance()
			bee.assignment = self
			get_parent().add_child(bee)
			#print("?")

# called by bee when in range
func bee_action_cbk(bee):
	print("base action")


func get_levelup_cost():
	return 0

func get_assignment_max():
	return 1

func get_assigned():
	return 0

func get_assigned_goal():
	return 0
func goal_assign():
	pass

func assign():
	pass

func goal_unassign():
	pass

func unassign():
	pass

# path for assigned bees to follow
func get_path():
	return null

func is_in_range(pos):
	var vec = pos - get_pos()
	if ( vec.length() < 20.0 ):
		return true
	#print(vec.length())
	return false