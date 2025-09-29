extends Label


var cheese:int = 0


func _ready() -> void:
	text = "CHEESE GIVEN: " + str(cheese)


func _on_sir_rgb_rat_pressed() -> void:
	cheese+=1
	text = "CHEESE GIVEN: " + str(cheese)
