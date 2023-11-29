extends Sprite2D
var pos: Vector2 = Vector2.ZERO
const speed: int = 300
var test_scale: int = 1;
# Called when the node enters the scene tree for the first time.
func _ready():
	test_scale +=1
	scale.x = test_scale
	scale.y = test_scale
	
	pos = Vector2(300,200)
	position = pos
	var test_rotation = 45
	rotation_degrees = test_rotation

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pos.x += 50 * delta
	position =  pos
#	rotation_degrees += speed/2 * delta
#	scale.x += 1 * delta
#	scale.y += 1 * delta
