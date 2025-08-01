extends CharacterBody2D

var entrarPorta = false
var cenaEntrar

func _physics_process(_delta: float) -> void:
	if Input.is_action_pressed("D"):
		position.x += 5
	if Input.is_action_pressed("A"):
		position.x -= 5
	if Input.is_action_pressed("W"):
		position.y -= 5
	if Input.is_action_pressed("S"):
		position.y += 5
	
	move_and_slide()
	
	if entrarPorta == true and Input.is_action_just_pressed("leftClick"):
		get_tree().change_scene_to_file(cenaEntrar)

func _on_area_2d_area_shape_entered(_area_rid: RID, area: Area2D, _area_shape_index: int, _local_shape_index: int) -> void:
	entrarPorta = true
	if area.is_in_group("1"):
		cenaEntrar = $"../Portas/Porta".cena
	if area.is_in_group("2"):
		cenaEntrar = $"../Portas/Porta2".cena
	if area.is_in_group("3"):
		cenaEntrar = $"../Portas/Porta3".cena
	if area.is_in_group("4"):
		cenaEntrar = $"../Portas/Porta4".cena
	if area.is_in_group("5"):
		cenaEntrar = $"../Portas/Porta5".cena
	if area.is_in_group("6"):
		cenaEntrar = $"../Portas/Porta6".cena
	if area.is_in_group("7"):
		cenaEntrar = $"../Portas/Porta7".cena
	if area.is_in_group("8"):
		cenaEntrar = $"../Portas/Porta8".cena

func _on_area_2d_area_shape_exited(_area_rid: RID, area: Area2D, _area_shape_index: int, _local_shape_index: int) -> void:
	if area.is_in_group("1") or area.is_in_group("2") or area.is_in_group("3") or area.is_in_group("4") or area.is_in_group("5") or area.is_in_group("6") or area.is_in_group("7") or area.is_in_group("8"):
		entrarPorta = false
