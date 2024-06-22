extends DialogueBranch

#Chooses the branch that matches the current day, or the lowest in the list if it runs out

func choose_branch():
	return min(PlayerVariables.get_flag('day')-1, len(possible_branches)-1)
