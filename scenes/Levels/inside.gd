extends ParentLevel


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_exit_gate_area_body_entered(body):
	var tween = create_tween()
	tween.tween_property($Player,"player_speed",0,0.5)
