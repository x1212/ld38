extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("Sprite 2").assignment = get_node("Sprite")
	#get_tree().get_root().get_node("/root/game_state").collecting_bees += 1
	#get_tree().get_root().get_node("/root/game_state").goal_collecting_bees += 1
	get_node("Sprite 2").assignment.goal_assign()
	get_node("Sprite 2").assignment.assign()
	pass
