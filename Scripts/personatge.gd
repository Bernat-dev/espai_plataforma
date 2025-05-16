extends CharacterBody2D

var velocitat := 150
var direccio := Vector2.ZERO
var gravetat:= Vector2.DOWN * 500
var SALT:= -300
var salts_disponibles = 1
var MAX_SALTS = 1
var vides = 3
var spawnpoint = Vector2(0,0)
var immunitat = true
@onready var timer_immunitat: Timer = $Timer_immunitat
var parts_cohets = 0


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
		if Input.is_action_pressed("pegar"):
			$Sprite.play("Pegar")
	
	velocity += gravetat * delta
	move_and_slide()
	if is_on_floor():
		salts_disponibles = MAX_SALTS
	if not is_on_floor():
		$Sprite.play("Salt")
		
	if vides == 3:
		$Vida_1.play("Ple")
		$Vida_2.play("Ple")
		$Vida_3.play("Ple")
		
	if vides == 2:
		$Vida_1.play("Ple")
		$Vida_2.play("Ple")
		$Vida_3.play("Buit")
		
	if vides == 1:
		$Vida_1.play("Ple")
		$Vida_2.play("Buit")
		$Vida_3.play("Buit")
	
	if vides == 0:
		get_tree().change_scene_to_file("res://Escenes/pantalla d'eleccio.tscn")
	if parts_cohets == 2:
		get_tree().change_scene_to_file("res://Escenes/credits.tscn")


func mal():
	if immunitat == false:
		vides -=1
		timer_immunitat.start()
	else:
		pass




func _on_timer_immunitat_timeout() -> void:
	immunitat = false
