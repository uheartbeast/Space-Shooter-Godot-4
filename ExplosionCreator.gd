extends Node2D

const EXPLOSION_EFFECT_SCENE = preload("res://explosion_effect.tscn")

func _exit_tree():
	var world = get_tree().current_scene
	var explosion_effect = EXPLOSION_EFFECT_SCENE.instantiate()
	world.add_child.call_deferred(explosion_effect)
	explosion_effect.global_position = global_position
