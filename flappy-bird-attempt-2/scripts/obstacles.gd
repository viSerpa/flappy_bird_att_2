extends Node2D

var speed := 170

func _on_pipes_body_entered(body: Node2D) -> void:
	if body is Player:
		body.die()

func _process(delta: float) -> void:
	position.x -= speed * delta
	if position.x < -500:
		queue_free()

func _on_score_zone_body_entered(body: Node2D) -> void:
	if body is Player:
		body.score_point()

func stop() -> void:
	speed = 0
