extends DialogueBranch

func choose_branch():
	if PlayerVariables.get_flag('ingredient_quest_heard'):
		return 0
	return 1
