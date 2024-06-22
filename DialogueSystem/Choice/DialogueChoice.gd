@icon('res://DialogueSystem/Choice/dialogue_choice_icon.png')
extends Node

# A choice for a DialogueQuestion. Must be a child of the question

#What this option says ('Yes', 'No', etc.)
@export_multiline var option_content : String

#Energy required for this option
@export var energy_requirement : int = 0

#if the player chooses this option, continue to this.
@export var next_dialogue: Dialogue 

func _ready():
	if next_dialogue == null:
		push_warning('Next dialogue not defined for %s' % name)
		return

#overwrite this if a condition must be met for this dialogue to be an option (energy limit etc.)
func is_enabled():
	return PlayerVariables.get_flag('energy') >= energy_requirement

	
