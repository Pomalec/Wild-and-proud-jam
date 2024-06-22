extends Node

#players current energy. resets to 3 every day, actions take 1-2 energy.
var energy : int = 3 : set = energy_changed

func energy_changed(value):
	energy = value
	print('Player now has %d energy remaining for the day.', value)
