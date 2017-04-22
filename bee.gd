extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var assignment
var path_follow = 0.0

func _ready():
	set_process(true)

func _process(delta):
	path_follow += delta/10.0
	if (path_follow > 1.0):
		path_follow = path_follow - floor(path_follow)
	set_pos( assignment.get_path().get_curve().interpolate(path_follow,true) )
