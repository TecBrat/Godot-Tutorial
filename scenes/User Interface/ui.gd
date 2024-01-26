extends CanvasLayer
var green: Color = Color("6bbfa3")
var red: Color = Color(0.9,0,0,1)


@onready var laser_label: Label = $LaserCount/VBoxContainer/Label
@onready var grenade_label: Label = $GernadeCount/VBoxContainer/Label
@onready var laser_icon: TextureRect = $LaserCount/VBoxContainer/TextureRect
@onready var grenade_icon: TextureRect = $GernadeCount/VBoxContainer/TextureRect
@onready var default_color: Color = green

func update_ui_ammo_color(amount: int) -> Color:
	if(amount > 0):
		return green 
	else:
		return red

func update_laser_label():	
	var laser_color = update_ui_ammo_color(Globals.lasers_available)
	laser_label.text = str(Globals.lasers_available)
	laser_label.modulate = laser_color
	laser_icon.modulate = laser_color
	
	
func update_grenade_label():
	var grenade_color = update_ui_ammo_color(Globals.grenades_available)
	grenade_label.text = str(Globals.grenades_available)
	grenade_label.modulate = grenade_color
	grenade_icon.modulate = grenade_color
	
func _ready():
	update_laser_label()
	update_grenade_label()
