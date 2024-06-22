extends Node2D

@export var test_energy : int = 1

func _ready():
	PlayerVariables.energy = test_energy
	$CanvasLayer/DialogueUI.current_dialogue = $Hello
	$CanvasLayer/DialogueUI.update()
