extends CharacterBody2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
#	set_velocity(Vector2(75,0))



# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var direction = Vector2.RIGHT
	velocity = direction * 200
	move_and_slide()
