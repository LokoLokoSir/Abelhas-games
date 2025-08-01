extends CharacterBody2D

var correta = false
var errada = false

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
	
	if correta == true and Input.is_action_just_pressed("leftClick"):
		get_tree().change_scene_to_file("res://cenas/correta.tscn")
	if errada == true and Input.is_action_just_pressed("leftClick"):
		get_tree().change_scene_to_file("res://cenas/errada.tscn")

func _on_area_2d_area_shape_entered(_area_rid: RID, area: Area2D, _area_shape_index: int, _local_shape_index: int) -> void:
	if area.is_in_group("1"):
		correta = true
		errada = false
	if area.is_in_group("2"):
		correta = false
		errada = true
	if area.is_in_group("3"):
		correta = false
		errada = true

func _on_area_2d_area_shape_exited(_area_rid: RID, area: Area2D, _area_shape_index: int, _local_shape_index: int) -> void:
	if area.is_in_group("1") or area.is_in_group("2") or area.is_in_group("3"):
		correta = false
		errada = false
