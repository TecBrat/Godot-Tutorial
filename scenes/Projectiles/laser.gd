#Laser
extends Area2D
@export var speed: int = 2000
#var direction: Vector2 = Vector2.UP
var direction: Vector2 = Vector2(0,0)
# Called when the node enters the scene tree for the first time.
func _ready():
	$BlastParticles.restart()
	$BlastParticles.emitting = true
	$LaserLifeTimer.start()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):	
	pass
	position += direction * speed * delta

func _on_body_entered(body):
	if "hit" in body:
		body.hit()
	queue_free()


func _on_laser_life_timer_timeout():
	queue_free()
