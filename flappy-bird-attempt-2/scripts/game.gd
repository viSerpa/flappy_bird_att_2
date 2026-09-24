extends Node2D

@onready var base: StaticBody2D = $Base
@onready var obstacle_spawner: Node2D = $ObstacleSpawner
@onready var hud: CanvasLayer = $HUD

var score := 0

func _on_bird_started() -> void:
	base.start()
	obstacle_spawner.start()
	hud.hide_start_message()
	hud.show_score(score)

func _on_bird_died() -> void:
	base.stop()
	obstacle_spawner.stop()
	get_tree().call_group("obstacles", "stop")
	hud.show_game_over()

func _on_bird_scored() -> void:
	score += 1
	hud.show_score(score)

# add sounds (do last)
