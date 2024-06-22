@icon('res://DialogueSystem/UI/dialogue_choice_icon.png')
extends Node

# A choice for a DialogueQuestion. Must be a child of the question

#What this option says ('Yes', 'No', etc.)
@export var option_content : String

#if the player chooses this option, continue to this.
@export var next_dialogue: Dialogue 

#overwrite this if a condition must be met for this dialogue to be an option (energy limit etc.)
func is_enabled():
	return true
	
#player selected this choice
func choice_taken():
	if next_dialogue == null:
		push_error('Next dialogue not defined')
		return
	next_dialogue.activate()
	
	
