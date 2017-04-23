extends Camera2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	set_process(true)

func _process(delta):
	set_pos(((get_global_mouse_pos()/3.0)*(1.0+delta)+get_pos()*(3.0-delta))/4.0)