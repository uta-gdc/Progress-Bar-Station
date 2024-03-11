extends Node2D

@onready var score_label: Label = $ScoreLabel
@onready var progress_bar = $ProgressBar
@onready var score_increase = $ScoreIncrease
@onready var victory = $Victory

var score: int = 0

func _on_area_2d_body_entered(body):
	score += 1
	progress_bar.value += 1
	score_label.text = "Score: " + str(score)

func _on_death_box_body_entered(body):
	get_tree().call_deferred("reload_current_scene")
	
func _on_progress_bar_value_changed(value):
	if progress_bar.value == progress_bar.max_value:
		victory.play()
	else:
		score_increase.play()
