extends Sprite

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var assignment
var path_follow = 0.0

func _ready():
	set_process(true)

func _process(delta):
	path_follow += delta*200
	if (path_follow > assignment.get_path().get_curve().get_baked_length()):
		path_follow = 0.0
	set_pos( assignment.get_path().get_curve().interpolate_baked(path_follow,true) )
	print ( get_pos() )
	print (path_follow )
