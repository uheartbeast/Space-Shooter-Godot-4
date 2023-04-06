extends Node2D

const ENEMY_SCENE = preload("res://enemy.tscn")

@onready var spawn_points = $SpawnPoints

func get_spawn_position():
	var points = spawn_points.get_children()
	var random_point = points.pick_random()
	return random_point.global_position

func spawn_enemy():
	var enemy = ENEMY_SCENE.instantiate()
	var world = get_tree().current_scene
	world.add_child(enemy)
	var spawn_position = get_spawn_position()
	enemy.global_position = spawn_position

func _on_timer_timeout():
	spawn_enemy()
