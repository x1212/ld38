extends HBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	level = int(sqrt(randi()%10))+1
	set_process(true)

var countdown = 30.0
var level = 0
func _process(delta):
	if (get_parent().get_child(0) != self):
		return
	countdown -= delta
	if ( countdown < 0.0 ):
		var gs = get_tree().get_root().get_node("/root/game_state")
		if (gs.guarding_bees < level):
			gs.food -= level * 30
			gs.free_bees -= level*5
		get_parent().new_event()
		queue_free()
	else:
		get_node("Label").set_text("lvl. " + str(level) + " " + str(floor(countdown)))