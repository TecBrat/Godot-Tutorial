#Level
extends Node2D
class_name ParentLevel

var laser_scene = preload("res://scenes/Projectiles/laser.tscn")
var grenade_scene = preload("res://scenes/Projectiles/grenade.tscn")

var test_array: Array[String] = ["Hello","World","!",]

# Called when the node enters the scene tree for the first time.
#func _ready():
	#print('Level ' + str(Globals.lasers_available))
##	$Logo.rotation_degrees = 90
	#for i in test_array:
		#print(i)		
		#

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
#	$Logo.rotation_degrees += 100 * delta
#	print (str($Logo.position.x))
#	if $Logo.position.x > get_viewport_rect().size.x:
#		$Logo.pos.x = 0
	
#	print(Input.is_action_pressed("left"))
#	$Logo.rotation_degrees = 0
	pass

func _on_player_player_fire_laser(pos,direction):
	var laser = laser_scene.instantiate() as Area2D
	laser.position = pos
	laser.direction = direction
	laser.rotation_degrees = rad_to_deg(direction.angle())
	$Projectiles.add_child(laser,true)
	$UI.update_laser_label()
	
#   The below works. I'm only changing it to rotation_degrees to match the tutorial.
#   The tutorial has a correction for the artwork being 90° offset.
#   I changed the sprite's rotation instead.
#	laser.look_at(get_global_mouse_position())
	

func _on_player_player_throw_grenade(pos, direction):
	var grenade = grenade_scene.instantiate() as RigidBody2D
	grenade.position = pos
	grenade.linear_velocity = direction * grenade.speed
	$Projectiles.add_child(grenade,true)
	$UI.update_grenade_label()



