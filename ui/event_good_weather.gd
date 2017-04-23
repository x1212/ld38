extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

var countdown = 30.0
func _process(delta):
	if (get_parent().get_child(0) != self):
		return
	countdown -= delta
	if ( countdown < 0.0 ):
		var gs = get_tree().get_root().get_node("/root/game_state")
		gs.weather = gs.GOOD_WEATHER
		get_parent().new_event()
		queue_free()
	else:
		get_node("Label").set_text(str(floor(countdown)))