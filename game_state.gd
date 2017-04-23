extends Node

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

var food = 5
var material = 0
var free_bees = 10
var collecting_bees = 0
var guarding_bees = 0
var building_bees = 0
var goal_collecting_bees = 0
var goal_guarding_bees = 0
var goal_building_bees = 0

const NORMAL_WEATHER = 0
const GOOD_WEATHER = 1
const BAD_WEATHER = 2

var weather = NORMAL_WEATHER

var next_event = null


func _ready():
	# Called every time the node is added to the scene.
	# Initialization here
	set_process(true)
	pass


func _process(delta):
	if (free_bees >= 100 and food >= 300):
		pass
		#todo: win!
	pass