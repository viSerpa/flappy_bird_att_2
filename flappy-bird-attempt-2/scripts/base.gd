extends StaticBody2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_killzone_body_entered(body: Node2D) -> void:
	if body is Player:
		body.die()

func start() -> void:
	animation_player.play("moving ground")
	
func stop() -> void:
	animation_player.stop()
