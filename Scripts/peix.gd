extends  Node2D

var direccio = 1
@onready var ray_cast_dreta: RayCast2D = $RayCastDreta
@onready var ray_cast_esquerra: RayCast2D = $RayCastEsquerra

func _process(delta: float) -> void:

	
	position.x += 60 * delta * direccio

	if ray_cast_dreta.is_colliding():
		direccio = -1
		$AnimatedSprite2D.flip_h = true
	if ray_cast_esquerra.is_colliding():
		direccio = 1
		$AnimatedSprite2D.flip_h = false
