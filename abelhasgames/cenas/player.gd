extends Node2D
#DeclaraçãoDeVariavel
var TEMPODECORRIDO = 0

#Cronometro
func _process(delta: float) -> void:
	if TEMPODECORRIDO/60 < 5 :
		TEMPODECORRIDO += delta
		var minutos = int(TEMPODECORRIDO) / 60
		var segundos = int(TEMPODECORRIDO) % 60
		#print("%02d:%02d" % [minutos, segundos])
	else:
		TEMPODECORRIDO = 0
		
