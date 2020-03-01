extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var fart
var sprite
onready var plane = get_node("../../Physicsbody/Plane")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position = Vector2(rand_range(1200,1300),rand_range(100,600))
	sprite = randi() % 3
	print(sprite)
	
	if sprite == 0:
		self.region_rect = Rect2(Vector2(2,2), Vector2(62,63))
	elif sprite == 1:
		self.region_rect = Rect2(Vector2(67,2), Vector2(62,63))
	else:
		self.region_rect = Rect2(Vector2(132,2), Vector2(62,63))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position -= Vector2(2,0)
