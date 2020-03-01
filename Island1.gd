extends Sprite

# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var fart
var sprite
onready var bakgrund = get_node("/root/Main/Bakgrund")

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	position = Vector2(rand_range(500,900),rand_range(100,600))
	sprite = randi() % 3
	
	if sprite == 0:
		region_rect = Rect2(Vector2(2,2), Vector2(62,63))
	elif sprite == 1:
		region_rect = Rect2(Vector2(67,2), Vector2(62,63))
	else:
		region_rect = Rect2(Vector2(132,2), Vector2(62,63))

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position += Vector2(bakgrund.speed,0)
	if position.x < -64:
		queue_free()
