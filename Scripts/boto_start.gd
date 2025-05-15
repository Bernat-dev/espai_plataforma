extends Button



func _on_pressed() -> void:
	$sprite_boto.play("Clic")
	get_tree().change_scene_to_file("res://Escenes/pantalla d'eleccio.tscn")



func _on_mouse_entered() -> void:
	$sprite_boto.play("Damunt")



func _on_mouse_exited() -> void:
	$sprite_boto.play("Normal")
