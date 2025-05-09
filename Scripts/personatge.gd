extends CharacterBody2D

var velocitat := 150
var direccio := Vector2.ZERO
var gravetat:= Vector2.DOWN * 500
var SALT:= -300
var salts_disponibles = 1
var MAX_SALTS = 1


func _process(delta:float) -> void:
	var mov = Input.get_axis("moure_esquerra", "moure_dreta")
	velocity.x =  velocitat * mov
	move_and_slide()
	if Input.is_action_just_pressed("salt") and salts_disponibles>0:
		velocity.y += SALT
		salts_disponibles -=1
	if mov < 0:
		$Sprite.flip_h = true
		$Sprite.play("Run")
		
	if mov > 0:
		$Sprite.flip_h = false
		$Sprite.play("Run")
	if mov == 0 and is_on_floor():
		$Sprite.play("Quiet")
	
	velocity += gravetat * delta
	move_and_slide()
	if is_on_floor():
		salts_disponibles = MAX_SALTS
	if not is_on_floor():
		$Sprite.play("Salt")
		
