extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var fart
onready var plane = get_node("../../Physicsbody/Plane")

# Called when the node enters the scene tree for the first time.
func _ready():
	position = Vector2(rand_range(1200,1300),rand_range(0,800))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= Vector2(1,0)
