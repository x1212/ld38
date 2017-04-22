extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	get_node("Sprite 2").assignment = get_node("Sprite")
	pass
