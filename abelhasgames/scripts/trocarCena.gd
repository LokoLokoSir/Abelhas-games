extends Area2D

@onready var sairBool = false
@export var cena: String = "corredor"

func _on_body_entered(body):
	if body.is_in_group("jogador"):
		$Entrada.visible = true
		sairBool = true

func _on_body_exited(body):
	if body.is_in_group("jogador"):
		$Entrada.visible = false
		sairBool = false

func _input(event):
	if event.is_action_pressed("enter") and sairBool == true:
		get_tree().change_scene_to_file("res://cenas/" + cena + ".tscn")
