extends CharacterBody2D
class_name Player

signal started
signal died
signal scored

@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var animation_player: AnimationPlayer = $AnimatedSprite2D/AnimationPlayer
@onready var point_sound: AudioStreamPlayer = $PointSound
@onready var flap_sound: AudioStreamPlayer = $FlapSound
@onready var death_sound: AudioStreamPlayer = $DeathSound

var is_alive := true
var game_started := false
var gravity := 900.0
const FLAP_FORCE := 330

var max_angle := -30.0
var min_angle := 90.0
var turn_speed := 2.0

func _physics_process(delta: float) -> void:
	
	if !game_started:
		if Input.is_action_just_pressed("flap") && is_alive:
			start_game()
			flap()
			animation_player.stop()
		return
	
	velocity.y += gravity * delta
	
	if Input.is_action_just_pressed("flap") && is_alive:
		flap()
	
	if velocity.y < 0:
		rotation = lerp_angle(rotation, deg_to_rad(max_angle), turn_speed * 4 * delta)
	else:
		rotation = lerp_angle(rotation, deg_to_rad(min_angle), turn_speed * 1.5 * delta)
	
	move_and_slide()
	
func flap() -> void:
	velocity.y = -FLAP_FORCE
	flap_sound.play()
	
func start_game() -> void:
	if !game_started:
		game_started = true
		started.emit()

func die() -> void:
	if is_alive:
		is_alive = false
		animated_sprite.stop()
		died.emit()
		death_sound.play()

func score_point() -> void:
	if is_alive:
		scored.emit()
		point_sound.play()
