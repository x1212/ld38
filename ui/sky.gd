extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

export (Color) var normal
export (Color) var good
export (Color) var bad

var gs
func _ready():
	set_process(true)
	gs = get_node("/root/game_state")

func _process(delta):
	if (gs.weather == gs.NORMAL_WEATHER):
		set_modulate(normal)
		print(":)")
	elif (gs.weather == gs.GOOD_WEATHER):
		set_modulate(good)
		print(":D")
	elif (gs.weather == gs.BAD_WEATHER):
		set_modulate(bad)
		print(":(")