extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var assignment
var path_follow = 0.0

func _ready():
	set_process(true)

func _process(delta):
	path_follow += delta*200
	var toggle_action = true
	if ( assignment.is_in_range(get_pos()) ):
		toggle_action = false
		print("false")
	if (path_follow > assignment.get_path().get_curve().get_baked_length()):
		path_follow = 0.0
	set_pos( assignment.get_path().get_curve().interpolate_baked(path_follow,true) + assignment.get_pos() )
	if ( toggle_action and assignment.is_in_range(get_pos()) ):
		assignment.bee_action_cbk(self)
		if ( assignment.get_assigned() > assignment.get_assigned_goal() ):
			get_tree().get_root().get_node("/root/game_state").free_bees += 1
			assignment.unassign()
			queue_free()
		print("true")
