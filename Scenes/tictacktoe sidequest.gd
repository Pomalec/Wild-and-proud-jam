extends Control

var iconx = preload("res://assets/Randomimages/X.png")
var iconO = preload("res://assets/Randomimages/O.png")

var playeroturn = true
var playerxturn = false




func _on_texture_button_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_2_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton2").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton2").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_3_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton3").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton3").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_4_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton4").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton4").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_5_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton5").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton5").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_6_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton6").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton6").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_7_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton7").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton7").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_8_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton8").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton8").texture_normal = iconx
		playeroturn = true
		playerxturn = false


func _on_texture_button_9_pressed():
	if playeroturn:
		get_node("MarginContainer/GridContainer/TextureButton9").texture_normal = iconO
		playeroturn = false
		playerxturn = true
	elif playerxturn:
		get_node("MarginContainer/GridContainer/TextureButton9").texture_normal = iconx
		playeroturn = true
		playerxturn = false
