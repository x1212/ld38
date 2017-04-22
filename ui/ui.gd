extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	var assigned = get_parent().get_assigned()
	var assigned_goal = get_parent().get_assigned_goal()
	get_node("Label").set_text("assigned Bees: " + str(assigned) + "\nrequested Bees: " + str(assigned_goal) )


func _on_minus_pressed():
	if ( get_parent().get_assigned_goal() > 0 ):
		get_parent().goal_unassign()


func _on_plus_pressed():
	if ( get_parent().get_assigned_goal() < get_parent().get_assignment_max() ):
		get_parent().goal_assign()
