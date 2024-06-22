extends CharacterBody2D

@onready var character_sprite : AnimatedSprite2D = $PartyMemberSprite
@onready var move_timer : Timer = $MoveTimer

#Change these to give the character more personality
# High speed + chance of changing direction looks more nervous and scared

@export var speed = 30
@export var change_direction_chance : float = 0.5



var is_roaming = true

var is_chatting = false
var player
var player_in_chat_zone =false

enum MOVE_STATES {
	IDLE,
	MOVE
}
var current_state : MOVE_STATES = MOVE_STATES.IDLE


var available_directions = [Vector2.UP, Vector2.LEFT, Vector2.RIGHT, Vector2.DOWN]
var current_direction = Vector2.RIGHT






func _ready():
	randomize()
	#set an initial direction and state randomly
	_on_move_timer_timeout()

func _process(delta):
	
	#this could technically be put in the timer timeout but
	#its easier to understand here.
	if current_state == MOVE_STATES.MOVE:
		velocity = current_direction * speed
	else:
		velocity = Vector2.ZERO

	
	if Input.is_action_just_pressed("interact"):
		print ("chatting ")
		is_roaming = false
		is_chatting = true
		character_sprite.play("default")
			
	move_and_slide()

	
func _on_chatdetection_body_entered(body):
	if body.has_method("player"):
		player = body
		player_in_chat_zone = true


func _on_chatdetection_body_exited(body):
	if body.has_method("player"):
		player_in_chat_zone = false
		

func _on_move_timer_timeout():
	#set wait time to a second or so and whether to stand idle or wander
	move_timer.wait_time = randf_range(0.5, 2.5)
	current_state = MOVE_STATES.values()[randi() % MOVE_STATES.size()]
	
	#chance to change walk direction
	if change_direction_chance > randi_range(0,1):
		current_direction = available_directions.pick_random()
		
	#set looping animation to match direction if moving		
	if current_state == MOVE_STATES.MOVE:
		match current_direction:
			Vector2.UP:
				character_sprite.play("walk_up")
			Vector2.DOWN:
				character_sprite.play("walk_down")
			Vector2.LEFT:
				character_sprite.play("walk_left")
			Vector2.RIGHT:
				character_sprite.play("walk_right")
		
	#else play default anim
	if current_state == MOVE_STATES.IDLE:
		character_sprite.play("default")
		
