extends Button



func _on_pressed() -> void:
	get_tree().change_scene_to_file("res://Escenes/menu.tscn")



func _on_mouse_entered() -> void:
	$AnimatedSprite2D.play('default')



func _on_mouse_exited() -> void:
	$AnimatedSprite2D.play("new_animation")
