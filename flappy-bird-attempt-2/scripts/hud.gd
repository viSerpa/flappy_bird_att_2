extends CanvasLayer

@onready var game_over: TextureRect = $GameOver
@onready var start_message: TextureRect = $StartMessage
@onready var retry_button: Button = $GameOver/RetryButton
@onready var score_label: Label = $ScoreLabel

func hide_start_message() -> void:
	start_message.visible = false
	
func _ready() -> void:
	game_over.visible = false
	start_message.visible = true
	score_label.visible = false

func show_game_over() -> void:
	game_over.visible = true

func show_score(current_score) -> void:
	score_label.visible = true
	score_label.text = str(current_score)

func _on_retry_button_pressed() -> void:
	get_tree().reload_current_scene()
