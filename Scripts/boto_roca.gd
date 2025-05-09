extends Button


func _on_pressed():
	get_tree().change_scene_to_file("res://Escenes/joc.tscn")


func _on_mouse_entered() -> void:
	$animacio_roca.play("seleccio_p_roca")


func _on_mouse_exited() -> void:
	$animacio_roca.stop()
