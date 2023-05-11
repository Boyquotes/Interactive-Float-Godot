extends Node2D

var direction := 0.0
var radius := 300.0
var speed := 1.0

var delay # default

func _process(delta):
	direction += delta * -1
	
	# TODO
	# find new way to calculate position
	position =  Vector2(
		(sin(direction * speed) * radius) - delay,
		
		# up and down
		# sin(direction * speed) + radius
		(cos(direction * speed) * radius) / delay
		
		# left and right
		# cos(direction * speed) + radius
	) + Vector2(350, 300)












