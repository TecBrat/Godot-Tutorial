extends CanvasLayer

@onready var laser_label: Label = $LaserCount/VBoxContainer/Label

func update_laser_label():
	laser_label.text = str(Globals.lasers_available)
	
