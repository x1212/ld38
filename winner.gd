extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var gs
func _ready():
	set_process(true)
	gs = get_tree().get_root().get_node("/root/game_state")
	hide()

func _process(delta):
	if (gs.won):
		show()


