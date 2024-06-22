extends CanvasLayer

@onready var cheat_menu_theme :Theme = preload("res://Autoload/CheatMenu/CheatMenu.tres")

@onready var vbox : VBoxContainer = $PanelContainer/HBoxContainer/VBoxContainer
@onready var output_flag_changes : Label = $PanelContainer2/HBoxContainer/VBoxContainer/FlagChangeLog

#force this dialogue to start
@export var dialogue_ui : Control
@export var debug_dialogue : Dialogue

func _ready():
	
	PlayerVariables.flag_changed.connect(flag_changed)
	
	for flag in PlayerVariables.flags:
		var hbox = HBoxContainer.new()
		
		#add a title
		var title = Label.new()
		title.text = flag
		hbox.add_child(title)
		
		#make input based on the flags type
		var value = PlayerVariables.flags[flag]
		
		#days, energy etc.
		if value is int:
			var input : SpinBox = SpinBox.new()
			input.value = value
			hbox.add_child(input)
			input.value_changed.connect(change_flag.bind(flag))
			
		elif value is bool:
			var input : Button = Button.new()
			input.toggle_mode = true
			input.button_pressed = value
			input.theme = cheat_menu_theme
			input.custom_minimum_size = Vector2(40,10)
			hbox.add_child(input)
			input.toggled.connect(change_flag.bind(flag))
			
		
		vbox.add_child(hbox)
		
#weird binding stuff where it adds the flag name after the value so it has to be swapped
func change_flag(value, key):
	if value is float:
		value = int(value)
	PlayerVariables.set_flag(key, value)


func _on_start_dialogue_pressed():
	dialogue_ui.current_dialogue = debug_dialogue
	dialogue_ui.update()

func flag_changed(flag, value):
	output_flag_changes.text += 'flag %s was set to %s' % [flag,value]
