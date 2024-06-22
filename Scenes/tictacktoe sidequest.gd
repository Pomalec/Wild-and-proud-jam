extends Control

var iconx = preload("res://assets/Randomimages/X.png")
var iconO = preload("res://assets/Randomimages/O.png")

var playeroturn = true
var playerxturn = false
var ifgameover = 0

var array1 = [11, 22, 3, 4, 5, 6,7, 8, 9]
var rng = RandomNumberGenerator.new()

var my_random_number = rng.randi_range(0,8)

func _on_texture_button_pressed():
	if array1[0] == 11:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[0] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[0] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_2_pressed():
	if array1[1] == 22:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton2").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[1] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton2").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[1] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_3_pressed():
	if array1[2] == 3:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton3").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[2] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton3").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[2] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_4_pressed():
	if array1[3] == 4:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton4").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[3] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton4").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[3] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_5_pressed():
	if array1[4] == 5:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton5").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[4] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton5").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[4] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_6_pressed():
	if array1[5] == 6:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton6").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[5] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton6").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[5] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_7_pressed():
	if array1[6] == 7:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton7").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[6] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton7").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[6] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_8_pressed():
	if array1[7] == 8:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton8").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[7] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton8").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[7] = 2
			#ifgameover = ifgameover + 1
			#_game_over()


func _on_texture_button_9_pressed():
	if array1[8] == 9:
		if playeroturn:
			get_node("MarginContainer/GridContainer/TextureButton9").texture_normal = iconO
			playeroturn = false
			playerxturn = true
			array1[8] = 1
			ifgameover = ifgameover + 1
			_game_over()
			_aibot()
		#elif playerxturn:
			#get_node("MarginContainer/GridContainer/TextureButton9").texture_normal = iconx
			#playeroturn = true
			#playerxturn = false
			#array1[8] = 2
			#ifgameover = ifgameover + 1
			#_game_over()
			

func _game_over():
	if array1[0]== 1 and array1[2] == 1 and array1[2] == 1:##checks for wins for O
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[3]== 1 and array1[4] == 1 and array1[5] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[6]== 1 and array1[7] == 1 and array1[8] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[0]== 1 and array1[4] == 1 and array1[8] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[2]== 1 and array1[4] == 1 and array1[6] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[0]== 1 and array1[3] == 1 and array1[6] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[2]== 1 and array1[4] == 1 and array1[7] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[2]== 1 and array1[5] == 1 and array1[8] == 1:
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[0]== 2 and array1[2] == 2 and array1[2] == 2:##checks for wins for X
		playeroturn = false
		playerxturn = false
		print("O wins")
	elif array1[3]== 2 and array1[4] == 2 and array1[5] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	elif array1[6]== 2 and array1[7] == 2 and array1[8] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")###
	elif array1[0]== 2 and array1[4] == 2 and array1[8] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	elif array1[2]== 2 and array1[4] == 2 and array1[6] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	elif array1[0]== 2 and array1[3] == 2 and array1[6] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	elif array1[2]== 2 and array1[4] == 2 and array1[7] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	elif array1[2]== 2 and array1[5] == 2 and array1[8] == 2:
		playeroturn = false
		playerxturn = false
		print("X wins")
	if ifgameover == 9:
		print("gameover")
		
func _aibot():
	if array1[my_random_number] == 1 or array1[my_random_number] == 2:
		my_random_number = rng.randi_range(0,8)
		_aibot()
	else:
		if my_random_number == 0:
			get_node("MarginContainer/GridContainer/TextureButton").texture_normal = iconx
		elif my_random_number == 1:
			get_node("MarginContainer/GridContainer/TextureButton2").texture_normal = iconx
		elif my_random_number == 2:
			get_node("MarginContainer/GridContainer/TextureButton3").texture_normal = iconx
		elif my_random_number == 3:
			get_node("MarginContainer/GridContainer/TextureButton4").texture_normal = iconx
		elif my_random_number == 4:
			get_node("MarginContainer/GridContainer/TextureButton5").texture_normal = iconx
		elif my_random_number == 5:
			get_node("MarginContainer/GridContainer/TextureButton6").texture_normal = iconx
		elif my_random_number == 6:
			get_node("MarginContainer/GridContainer/TextureButton7").texture_normal = iconx
		elif my_random_number == 7:
			get_node("MarginContainer/GridContainer/TextureButton8").texture_normal = iconx
		elif my_random_number == 8:
			get_node("MarginContainer/GridContainer/TextureButton9").texture_normal = iconx
				
		array1[my_random_number] = 2 
		playeroturn = true
		playerxturn = false
		ifgameover = ifgameover + 1
		_game_over()
		print(my_random_number)
		
	

