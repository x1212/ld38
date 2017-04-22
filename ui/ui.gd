extends Control

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	var assigned = get_parent().get_assigned()
	var assigned_goal = get_parent().get_assigned_goal()
	var cost = get_parent().get_levelup_cost()
	get_node("Label").set_text("assigned Bees: " + str(assigned) + "\nrequested Bees: " + str(assigned_goal) )
	get_node("cost").set_text("upgrade costs: " + str(cost))
	if (cost > get_tree().get_root().get_node("/root/game_state").material):
		get_node("cost").set("custom_colors/font_color", Color(1,0,0))
	else:
		get_node("cost").set("custom_colors/font_color", Color(1,1,1))


func _on_minus_pressed():
	if ( get_parent().get_assigned_goal() > 0 ):
		get_parent().goal_unassign()


func _on_plus_pressed():
	if ( get_parent().get_assigned_goal() < get_parent().get_assignment_max() ):
		get_parent().goal_assign()


func _on_levelup_pressed():
	var cost = get_parent().get_levelup_cost()
	if (cost <= get_tree().get_root().get_node("/root/game_state").material):
		get_tree().get_root().get_node("/root/game_state").material -= cost
		get_parent().level += 1
