extends Button
func _on_pressed():
	get_tree().change_scene_to_file("")


func _on_mouse_entered() -> void:
	$animacio_gel.play("seleccio_p_gel")


func _on_mouse_exited() -> void:
	$animacio_gel.stop()
