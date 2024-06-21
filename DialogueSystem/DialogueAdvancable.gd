extends Dialogue

# This is a basic bit of dialogue with no options. It simply plays out, and then the player can
# continue to the next piece.

# What is being spoken
@export_multiline var text_content : String

# Next piece to advance to
@export var next_dialogue : Dialogue


# call to begin this dialogue
func activate():
	print(text_content)
	continue_pressed()

# player reads this dialogue and presses the advance button
func continue_pressed():
	if next_dialogue == null:
		push_error('Next dialogue not defined')
		return
	next_dialogue.activate()
	
	
	
	
	

