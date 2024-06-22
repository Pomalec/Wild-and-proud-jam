extends Node

signal flag_changed(flag,value)

#Quest related variables
var flags = {
	'day' : 0 , #starts at 1, with 3 being the final preparation day.
	'energy' : 1,  #energy for the current day. resets to 3 at the start of a new day
	
	# MAGE STUFF
	'ingredient_quest_heard' : false, #whether the player has met the mage or not.
	'ingredient_quest_done' : 0 #0 is not, 1 is half help with one energy, 2 is full help with 2 energy
}

#use this to get a flags value
func get_flag(id:String):
	if flags.has(id):
		return flags[id]
		
	push_error('Tried to access non-existant flag %s' % id)

#use this to set a flags value
func set_flag(id:String, value):
	if !flags.has(id):
		push_error('Tried to set non-existant flag %s' % id)
	
	#check value is correct type
	if typeof(flags[id]) != typeof(value):
		push_warning('Setting flag %s to a value of incorrect type' % id)
		
	flags[id] = value
	print('Flag %s set to %s' % [id, value])
	flag_changed.emit(id,value)
