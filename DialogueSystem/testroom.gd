extends Node2D

func _ready():
	$CanvasLayer/DialogueUI.current_dialogue = $Hello
	$CanvasLayer/DialogueUI.update()
