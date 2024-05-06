extends CharacterBody2D
var speed = 100
var speed_default = speed
var sprint = 150
var dodge = 100

@export var inv = Inv

func _physics_process (delta):
	player_movement (delta)

func player_movement (delta):
	if Input.is_action_pressed("Shift"):
		speed = sprint
	else:
		speed = speed_default
	
	
	var direction = Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	
	if Input.is_action_just_pressed("ctrl"):
		velocity = velocity * 3
	velocity = direction * speed
	move_and_slide()
	
	

