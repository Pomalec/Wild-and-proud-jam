extends Control

#area to put main body of text
@onready var text_area : Label = $VBoxContainer/MainBox/VBoxContainer/TextArea

#area to add options too if needed
@onready var options_holder : Container = $VBoxContainer/Options

#scene for choices/answers to questions
@onready var choice_scene : PackedScene = preload("res://DialogueSystem/UI/DialogueChoice.tscn")

var current_dialogue : Dialogue


func update():
	
	#clear previous options
	for i in options_holder.get_children():
		i.queue_free()
	
	if current_dialogue == null:
		push_error('Cant update UI to display null dialogue!')
		return
		
	if current_dialogue is DialogueAdvancable:
		text_area.text = current_dialogue.text_content
		return
		
	if current_dialogue is DialogueQuestion:
		text_area.text = current_dialogue.text_content
		
		#get all the answers to be rendered
		for i in current_dialogue.get_children():
			var new_choice = choice_scene.instantiate()
			#link the ui node to the existing node
			new_choice.choice = i
			new_choice.dialogue_ui = self
			options_holder.add_child(new_choice)
		
	
	push_error('Unrecognised dialogue')
		

#player presses button to continue dialogue
func advance_button_pressed():
	print('test')
	if current_dialogue is DialogueAdvancable:
		current_dialogue = current_dialogue.next_dialogue
		update()

func _input(event):
	if Input.is_action_just_pressed("ui_accept"):
		advance_button_pressed()