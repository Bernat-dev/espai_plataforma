extends Button




func _on_mouse_entered() -> void:
	$animacio_aigua.play("seleccio_p_aigua")


func _on_mouse_exited() -> void:
	$animacio_aigua.stop()


func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/nivell_aigua.tscn")
