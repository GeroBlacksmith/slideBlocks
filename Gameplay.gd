extends Node

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var cube
var xpos = 0
var ypos = 0
# Called when the node enters the scene tree for the first time.
func _ready():
	cube = get_node("Cube")
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	cube.position = Vector2(xpos, ypos)
	
func _input(event):
	if event is InputEventKey and event.pressed:
		if event.scancode == KEY_A:
			xpos -= 10
		if event.scancode == KEY_D:
			xpos += 10
		if event.scancode == KEY_W:
			ypos -= 10
		if event.scancode == KEY_S:
			ypos += 10
		
