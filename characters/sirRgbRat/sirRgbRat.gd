extends CharacterBody2D


# Character constants
const SPEED:float = 300
const JUMP_VELOCITY:float = -400


# Character variables
var enableMovement:bool = true


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta

	# Handle jump.
	if Input.is_action_just_pressed("moveJump") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	var direction:float = Input.get_axis("moveLeft", "moveRight")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
	
	# Makes sure the character and hitbox are facing the right way
	if direction > 0:
		scale.y = -1
		rotation = PI
	elif direction < 0:
		scale.y = 1
		rotation = 0
