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

# user chose this option
func _on_button_pressed():
	dialogue_ui.current_dialogue = choice.next_dialogue
	dialogue_ui.update()
