extends TextureButton

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	pass

var game_scene = preload("res://game.tscn")
func _on_TextureButton_pressed():
	var scene_root = get_parent().get_parent()
	var root = scene_root.get_parent()
	root.add_child(game_scene.instance())
	scene_root.queue_free()
