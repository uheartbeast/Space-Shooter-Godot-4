extends Area2D

@export var speed = 20

func _process(delta):
	position.x -= speed * delta
