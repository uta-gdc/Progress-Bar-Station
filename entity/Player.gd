extends CharacterBody2D

var gravity: float = 200.0

var max_jumps : int = 3
var jump_counter : int = 0

@export var max_speed: float = 150
@export var jump_power: float = 50

func _ready():
	pass

func _process(delta):
	pass

func _physics_process(delta):
	move()
	apply_gravity(delta)
	check_jump()
	move_and_slide()

func move() -> void:
	velocity.x = Input.get_axis("left", "right") * max_speed

func apply_gravity(delta: float) -> void:
	velocity.y += gravity * delta

func check_jump() -> void:
	if Input.is_action_just_pressed("jump"):
		if jump_counter < max_jumps:
			velocity.y = 0
			velocity.y -= jump_power
			jump_counter += 1
	if is_on_floor():
		jump_counter = 0
