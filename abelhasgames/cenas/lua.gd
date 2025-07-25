extends Sprite2D

@onready var alvo = $"../CharacterBody2D"  # o objeto que ele vai orbitar
var raio_y = 600.0
var raio_x = 2*raio_y              # distância da órbita
var angulo = 180.0                  # ângulo atual em radianos
var velocidade = 1            # velocidade da órbita

func _ready() -> void:
	$".".z_index = -1

func _process(delta: float) -> void:
	# aumenta o ângulo com o tempo
	angulo += velocidade * delta

	# calcula a posição em volta do alvo
	var x = alvo.global_position.x + cos(angulo) * raio_x
	var y = alvo.global_position.y + sin(angulo) * raio_y

	# aplica a nova posição
	global_position = Vector2(x, y)

	# se quiser que ele também "olhe" para o alvo
	#look_at(alvo.global_position)
	print(delta)
