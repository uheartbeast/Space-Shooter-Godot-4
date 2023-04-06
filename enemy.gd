extends Area2D

@export var speed = 20
@export var armor = 3

func _process(delta):
	position.x -= speed * delta

func _on_body_entered(body):
	body.queue_free()
	armor -= 1
	if armor <= 0: queue_free()

func _on_visible_on_screen_notifier_2d_screen_exited():
	queue_free()
