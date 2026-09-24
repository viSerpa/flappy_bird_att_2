extends Node2D

@onready var spawn_timer: Timer = $SpawnTimer

var obstacles_scene: PackedScene = preload("res://scenes/obstacles.tscn")

var max_height := -150
var min_height := 50

func _on_spawn_timer_timeout() -> void:
	var new_obstacles = obstacles_scene.instantiate()
	new_obstacles.position.y = randf_range(max_height, min_height)
	add_child(new_obstacles)

func start() -> void:
	spawn_timer.start()
	
func stop() -> void: 
	spawn_timer.stop()
