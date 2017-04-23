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

func new_event():
	var event
	var rand = randi()%100
	if (rand < 50):
		event = normal_weather_scene.instance()
	elif (rand < 80):
		event = good_weather_scene.instance()
	else:
		event = bad_weather_scene.instance()
	add_child(event)

func _ready():
	new_event()
	new_event()