extends CharacterBody2D
var velocitat :float= 100
var direccio : Vector2 = Vector2.LEFT
var gas := 150
var fre = 300
	
func _process(delta: float) -> void:
	if Input.is_action_pressed("dreta"):
		direccio = direccio.rotated(0.03)
	if Input.is_action_pressed("esquerra"):
		direccio = direccio.rotated(-0.03)
	if Input.is_action_pressed("accelera"):
		velocitat += gas*delta
	if Input.is_action_pressed("frena"):
		velocitat = velocitat - fre*delta
	if Input.is_action_pressed("enrere"):
		velocitat = -velocitat
	if Input.is_action_pressed("endevant"):
		velocitat = 100
		
		
	velocity = direccio * velocitat
	move_and_slide()
	rotation = direccio.angle()
	
			
			
			
			#
		#)
	#var direccio := Vector2.ZERO
	#direccio = Input.get_vector("esquerra","dreta","endevant","enrere")
	#velocity = direccio * velocitat
	#move_and_slide()
	#anima(velocity, delta)
#func anima(velocity:Vector2, delta: float) -> void:
	#var velocitat_angular := 0.05
	
	
