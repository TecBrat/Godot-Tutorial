#Player
extends CharacterBody2D
var can_fire_laser: bool = true
var can_throw_grenade: bool = true
@export var player_speed: float = 1000.0
signal player_fire_laser(pos, direction)
signal player_throw_grenade(pos, direction)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var running_direction = Input.get_vector("left","right","up","down")
#	position += direction * 500 * delta
	velocity = running_direction * player_speed
	var shooting_direction: Vector2 = (get_global_mouse_position()-position).normalized()
	
	look_at(get_global_mouse_position())
	move_and_slide()
	
	if Input.is_action_just_pressed("primary action") and can_fire_laser:
		var laser_markers = $LaserPositions.get_children()
		var selected_laser = laser_markers[randi() % laser_markers.size()]
		
		player_fire_laser.emit(selected_laser.global_position,shooting_direction)
#		print("Shoot Laser")

		can_fire_laser = false
		$LaserTimer.start()
		
	if Input.is_action_just_pressed("secondary action") and can_throw_grenade:
		player_throw_grenade.emit($LaserPositions/Marker2D.global_position, shooting_direction)
#		print("Throw Grenade")
		can_throw_grenade = false
		$GrenadeTimer.start()
	
#	var playerRotate //replaced by lookat mouse
#	playerRotate = 0
#	if Input.is_action_pressed("rotate left"):
##		print("Rotate Left Called and rotation degrees is " + str(rotation_degrees))
#		playerRotate = -1
#	if Input.is_action_pressed("rotate right"):
##		print("Rotate Right Called and rotation degrees is " + str(rotation_degrees))
#		playerRotate = 1	
		
#	rotation_degrees += playerRotate * 200 * delta

func _on_grenade_timer_timeout():
	can_throw_grenade = true


func _on_laser_timer_timeout():
	can_fire_laser = true
