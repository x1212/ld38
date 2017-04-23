extends VBoxContainer

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

const EVENT_NORMAL_WEATHER = 0
const EVENT_GOOD_WEATHER = 1
const EVENT_BAD_WEATHER = 2
const EVENT_INVASION = 3

var normal_weather_scene = preload("res://ui/event_normal_weather.tscn")
var good_weather_scene = preload("res://ui/event_good_weather.tscn")
var bad_weather_scene = preload("res://ui/event_bad_weather.tscn")
var invasion_scene = preload("res://ui/event_wasp_invasion.tscn")

func new_event():
	var event
	var rand = randi()%100
	if (rand < 45):
		event = normal_weather_scene.instance()
	elif (rand < 75):
		event = good_weather_scene.instance()
	elif (rand < 90):
		event = bad_weather_scene.instance()
	else:
		event = invasion_scene.instance()
	add_child(event)


func _ready():
	new_event()
	new_event()
	get_child(0).set_scale(Vector2(1.0,1.0))
	if ( get_child(1) != null ):
		get_child(1).set_scale(Vector2(0.8,0.8))
