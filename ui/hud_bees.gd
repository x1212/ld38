extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var gs
func _ready():
	gs = get_tree().get_root().get_node("/root/game_state")
	set_process(true)

func _process(delta):
	set_text(str(gs.free_bees)+"/"+str(gs.GOAL_BEES))
	if (gs.free_bees >= gs.GOAL_BEES):
		set("custom_colors/font_color", Color(0,1,0))
	elif (gs.free_bees <= 0):
		set("custom_colors/font_color", Color(1,0,0))
	else:
		set("custom_colors/font_color", Color(1,1,1))