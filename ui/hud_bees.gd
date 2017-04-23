extends Label

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var gs
func _ready():
	gs = get_tree().get_root().get_node("/root/game_state")
	set_process(true)

func _process(delta):
	set_text(str(gs.free_bees))