extends Control

onready var option_scene = preload("res://scenes/option.tscn")

var options_data = [
	{"id": 1, "text": "number 1"},
	{"id": 2, "text": "number 2"},
	{"id": 3, "text": "number 3"},
]

# Called when the node enters the scene tree for the first time.
func _ready():
	populate_options(options_data)

func populate_options(data):
	var delay_track = 0.5
	for option_data in data:
		var option_instance = option_scene.instance()
		option_instance.delay = delay_track
		option_instance.get_node("option").text = option_data['text']
		add_child(option_instance)
		delay_track += 0.5



