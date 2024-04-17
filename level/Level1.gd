extends Node2D

@onready var score_label: Label = $ScoreLabel
@onready var progress_bar = $ProgressBar
@onready var score_increase = $ScoreIncrease
@onready var victory = $Victory

var score: int = 0

func _on_death_box_body_entered(body):
	get_tree().call_deferred("reload_current_scene")

