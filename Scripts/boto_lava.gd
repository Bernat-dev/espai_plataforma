extends Button
func _on_pressed():
	get_tree().change_scene_to_file("")



func _on_mouse_entered() -> void:
	$animacio_lava.play("seleccio_p_lava")


func _on_mouse_exited() -> void:
	$animacio_lava.stop()
