@icon("res://DialogueSystem/dialogue_advancable_icon.png")
extends Dialogue
class_name DialogueAdvancable


# This is a basic bit of dialogue with no options. It simply plays out, and then the player can
# continue to the next piece.

# Text that the character is saying.
@export_multiline var text_content : String

# Next piece to advance to.
@export var next_dialogue : Dialogue


func _ready():
	if next_dialogue == null:
		push_warning('Next dialogue not defined for %s' % name)

# player reads this dialogue and presses the advance button. Set custom events here
func continue_pressed():
	return
	
	
	
	
	
	

