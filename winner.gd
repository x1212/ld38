extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"
var gs
func _ready():
	set_process(true)
	gs = get_tree().get_root().get_node("/root/game_state")
	hide()

var count_down = 10.0
var menu_scene = preload("res://menu.tscn")
func _process(delta):
	if (gs.won):
		show()
		get_node("Label").set_text("back to menu in: " + str(floor(count_down)))
		count_down -= delta
		if ( floor(count_down) <= 0 ):
			var scene_root = get_parent().get_parent()
			var root = scene_root.get_parent()
			root.add_child(menu_scene.instance())
			scene_root.queue_free()


