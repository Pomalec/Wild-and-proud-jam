extends DialogueAdvancable

enum STATE{NOT_DONE, HALF_EFFORT, FULL_EFFORT}

@export var set_ingredient_flag_to : STATE = 0

func continue_pressed():
	PlayerVariables.set_flag('ingredient_quest_done', set_ingredient_flag_to)
	print('ahhh')
	
