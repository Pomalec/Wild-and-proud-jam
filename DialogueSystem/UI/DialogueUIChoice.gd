extends Control

# The UI representation of a DialogueChoice node.

# just for type hints dw bout it
const ChoiceType = preload('res://DialogueSystem/Choice/DialogueChoice.gd')

# the DialogueChoice this node is representing
var choice : ChoiceType

# the dialogue ui node
var dialogue_ui : Control


@onready var button : Button = $Button

#make sure the above variables are set before calling ready
func _ready():
	if !(choice is ChoiceType):
		push_error('UI choice incorrectly instanced.')
		return
	
	button.disabled = !choice.is_enabled()
	button.text = choice.option_content
	
# custom triggers go here (updating flags etc.)
func choice_pressed_event():
	
	#remove energy for choosing this option if applicable
	if choice.energy_requirement > 0:
		var current_energy = PlayerVariables.get_flag('energy')
		PlayerVariables.set_flag('energy', current_energy - choice.energy_requirement)

# user chose this option
func _on_button_pressed():
	if choice.next_dialogue == null:
		push_error('Next dialogue not defined')
		return
		
	#remove the energy
	choice_pressed_event()
	
	#then branch
	dialogue_ui.current_dialogue = choice.next_dialogue
	dialogue_ui.update()


