extends Button



func _on_mouse_entered() -> void:
	$animacio_lava.play("seleccio_p_lava")


func _on_mouse_exited() -> void:
	$animacio_lava.stop()


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/nivell_lava.tscn")
