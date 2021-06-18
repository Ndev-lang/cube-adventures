extends Area2D

signal stage

func _ready():
	$AnimatedSprite.play("wife1")

func _on_Area2D_body_entered(body):
	emit_signal("stage")
	$AnimatedSprite.play("wife")
	$Timer.start()


func _on_Timer_timeout():
	get_tree().change_scene("res://wingame.tscn")
