extends ParentLevel


# Called when the node enters the scene tree for the first time.
#func _ready():
	#pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

func _on_gate_player_entered_gate(body):
#	print(body.name + " Entered Gate")
	var tween = create_tween()
	tween.tween_property($Player,"player_speed",0,0.5)
	get_tree().change_scene_to_file("res://scenes/Levels/inside.tscn")

#func _on_gate_player_exited_gate(body):
#	print(body.name + " Exited Gate")

func _on_house_player_entered_house():
	print("Player Entered House!")
	var tween = get_tree().create_tween()
	tween.tween_property($Player/Camera2D,"zoom",Vector2(.5,.5),1)


func _on_house_player_exited_house():
	print("Player Exited House!")
	var tween = get_tree().create_tween()
	tween.tween_property($Player/Camera2D,"zoom",Vector2(.2,.2),1)
