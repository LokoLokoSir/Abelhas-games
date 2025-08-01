extends Node

var anomalias = ["res://cenas/correta.tscn", "res://cenas/Anomalias/errada.tscn", "res://cenas/Anomalias/errada2.tscn", "res://cenas/Anomalias/errada3.tscn", "res://cenas/Anomalias/errada4.tscn", "res://cenas/Anomalias/errada5.tscn", "res://cenas/Anomalias/errada6.tscn", "res://cenas/Anomalias/errada7.tscn", "res://cenas/Anomalias/errada8.tscn"]

func _ready() -> void:
	anomalias.shuffle()
	$Portas/Porta.cena = anomalias[0]
	$Portas/Porta2.cena = anomalias[1]
	$Portas/Porta3.cena = anomalias[2]
	$Portas/Porta4.cena = anomalias[3]
	$Portas/Porta5.cena = anomalias[4]
	$Portas/Porta6.cena = anomalias[5]
	$Portas/Porta7.cena = anomalias[6]
	$Portas/Porta8.cena = anomalias[7]
	print($Portas/Porta.cena)
	print($Portas/Porta2.cena)
	print($Portas/Porta3.cena)
	print($Portas/Porta4.cena)
	print($Portas/Porta5.cena)
	print($Portas/Porta6.cena)
	print($Portas/Porta7.cena)
	print($Portas/Porta8.cena)
