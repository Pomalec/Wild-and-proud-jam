extends Node

var inventory = []
var player_node: Node = null
signal inventory_updated
# Called when the node enters the scene tree for the first time.
func _ready():
	inventory.resize(30)
	
func add_item(item):
	for i in range(inventory.size()):
		if inventory[i] != null and inventory[i]["type"] and inventory[i]["effect"] == item["effect"]:
			inventory[i]["quantity"] += item["quantity"]
			inventory_updated.emit()
			return true
		elif inventory[i] == null:
			inventory[i] = item
			inventory_updated.emit()
			return true
		return false

func remove_item():
	inventory_updated.emit()
	
func increase_inv_size():
	inventory_updated.emit()
	
func set_player_reference(player):
	player_node = player

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
