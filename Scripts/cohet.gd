extends Area2D

@onready var timer: Timer = $Timer


func _on_body_entered(body: CharacterBody2D) -> void:
	$Cohet2.play("new_animation")
	timer.start(3)
	


func _on_timer_timeout() -> void:
	get_tree().change_scene_to_file("res://Escenes/pantalla d'eleccio.tscn")
