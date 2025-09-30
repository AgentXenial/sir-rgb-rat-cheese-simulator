extends Label


var cheese:int = 0


func _ready() -> void:
	text = "CHEESE GIVEN: " + str(cheese)


func _on_sir_rgb_rat_pressed() -> void:
	if cheese<9999999999999999:
		cheese+=1
		text = "CHEESE GIVEN: " + str(cheese)
	else:
		text = "CHEESE GIVEN: OVERFLOW!!!"
