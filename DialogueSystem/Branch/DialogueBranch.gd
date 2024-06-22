extends Dialogue

class_name DialogueBranch

@export var possible_branches : Array[Dialogue]

# Do not overwrite this. Overwrite choose_branch instead
func get_next_dialogue() -> Dialogue:
	if possible_branches.is_empty():
		push_error('No possible branches!')
		return null
	
	var next_dialogue_index = choose_branch()
	if next_dialogue_index > (len(possible_branches) + 1):
		push_error('Branch index is out of bounds!')
		return null
		
	print(possible_branches[next_dialogue_index])
	return possible_branches[next_dialogue_index]

#choose index of possible branches
func choose_branch() -> int:
	return 0
