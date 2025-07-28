extends Sprite2D

@onready var alvo = $"../CharacterBody2D"
var raio_y = 600.0
var raio_x = 2 * raio_y
var STARTANGLE = 135.0
var ENDANGLE = 45.0
var TEMPODAELIPSE = 300.0

func _ready() -> void:
	z_index = -1

func _process(delta) -> void:
	var progresso = clamp(GMAIN.TEMPODECORRIDO / TEMPODAELIPSE, 0.0, 1.0)
	var angle = STARTANGLE - progresso * (STARTANGLE - ENDANGLE)

	var radianos = deg_to_rad(-angle)

	var x = alvo.global_position.x + cos(radianos) * raio_x
	var y = alvo.global_position.y + sin(radianos) * raio_y

	global_position = Vector2(x, y)
	print(global_position)
