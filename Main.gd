extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var node = load("res://Island1.tscn")
var counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_just_pressed("ui_accept"):
		var node_instance = node.instance()
		node_instance.set_name("instance" + str(counter))
		get_tree().get_root().add_child(node_instance)
		counter = counter + 1
		# move as long as the key/button is pressed
		
