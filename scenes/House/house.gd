extends Area2D


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass

signal player_entered_house
signal player_exited_house

func _on_body_entered(body):
#	print("Emitting player_entered_house")
	player_entered_house.emit()


func _on_body_exited(body):
	#	print("Emitting player_exited_house")
	player_exited_house.emit()
