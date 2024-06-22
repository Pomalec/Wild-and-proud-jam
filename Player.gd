extends CharacterBody2D

@onready var interact_ui = $InteractUI

const SPEED = 300.0
const JUMP_VELOCITY = -400.0

func _ready():
	Global.set_player_reference(self)
# Get the gravity from the project settings to be synced with RigidBody nodes.



func _physics_process(delta):
	var direction = Input.get_vector("move_left","move_right","move_up","move_down")
	velocity = direction * SPEED

	move_and_slide()
