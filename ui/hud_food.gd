extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var gs
func _ready():
	gs = get_tree().get_root().get_node("/root/game_state")
	set_process(true)

func _process(delta):
	set_text(str(gs.food)+"/"+str(gs.GOAL_FOOD))
	if (gs.food >= gs.GOAL_FOOD):
		set("custom_colors/font_color", Color(0,1,0))
	elif (gs.food <= 2):
		set("custom_colors/font_color", Color(1,0,0))
	else:
		set("custom_colors/font_color", Color(1,1,1))