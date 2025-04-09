extends CharacterBody2D
var velocitat :float= 100
var direccio : Vector2 = Vector2.LEFT
var gas := 150
var fre = 300
var voltes = 0


	
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
	print(velocitat)
	get_node("/root/Node2D/StaticBody2D/velocitat").text = "Velocitat: " + str(velocitat)
	





	
			
			
			
			#
		#)
	#var direccio := Vector2.ZERO
	#direccio = Input.get_vector("esquerra","dreta","endevant","enrere")
	#velocity = direccio * velocitat
	#move_and_slide()
	#anima(velocity, delta)
#func anima(velocity:Vector2, delta: float) -> void:
	#var velocitat_angular := 0.05
	
	


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body == self:
		voltes += 1
		get_node("/root/Node2D/StaticBody2D/VoltesLabel").text = "Voltes: " + str(voltes)
