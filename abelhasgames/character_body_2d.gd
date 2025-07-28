extends CharacterBody2D
const SPEED = 300;
const JUMP_VELOCITY = -400;
@onready var CAMERAVIEWSIZE = get_viewport().size.y
@onready var CAMERA: Camera2D = $Camera2D #Camera

func _ready() -> void:
	CAMERA.zoom = Vector2(0.5,0.5)

var gravity = ProjectSettings.get_setting("physics/2d/default_gravity")
func _physics_process(delta):
	if not is_on_floor():
		velocity.y += gravity * delta
	if Input.is_action_just_pressed("Espaco") and is_on_floor():
		velocity.y = JUMP_VELOCITY
	var direction = Input.get_axis("A", "D")
	if direction != 0:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	move_and_slide()
		
	#Camera
	CAMERA.offset = Vector2(0,-CAMERAVIEWSIZE/3)
	#print(-CAMERAVIEWSIZE/3)
	#print(get_global_mouse_position())
