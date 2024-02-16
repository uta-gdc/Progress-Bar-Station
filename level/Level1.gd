extends Node2D

@onready var score_label: Label = $ScoreLabel

var score: int = 0

func _on_area_2d_body_entered(body):
    score += 1
    
    score_label.text = "Score: " + str(score)

func _on_death_box_body_entered(body):
    get_tree().call_deferred("reload_current_scene")
