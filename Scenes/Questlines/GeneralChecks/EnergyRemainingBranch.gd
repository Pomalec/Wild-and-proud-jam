extends DialogueBranch

func choose_branch():
	#you have remaining energy
	if PlayerVariables.get_flag('energy') > 0:
		return 0
	#you do not have any energy left
	return 1
