extends CanvasLayer

@onready var laser_label: Label = $LaserCount/VBoxContainer/Label
@onready var grenade_label: Label = $GernadeCount/VBoxContainer/Label
func update_laser_label():
	laser_label.text = str(Globals.lasers_available)
	
func update_grenade_label():
	grenade_label.text = str(Globals.grenades_available)
	
