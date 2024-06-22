@icon('res://DialogueSystem/Choice/dialogue_question_icon.png')
extends Dialogue
class_name DialogueQuestion

# This is a question. The responses the player can choose from should be children of this node.

#What the question is. 'Will you help?' etc.
@export_multiline var text_content : String

