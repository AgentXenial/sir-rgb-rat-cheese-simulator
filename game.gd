extends Node


# child nodes
@export var sirRgbRatAnimations:AnimationPlayer
@export var sirRgbRatSound:AudioStreamPlayer
@export var cheeseScoreText:Label


# access control switch
#var sirRgbRatClickLock:bool = false


# variables
var mute:bool = false
var cheese:int = 0


func _ready() -> void:
	cheeseScoreText.text = "CHEESE GIVEN: " + str(cheese)


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_sir_rgb_rat_pressed() -> void:
	if (cheese<10000000000000000):
		cheese+=1
		if (cheese >= 10000000000000000):
			cheeseScoreText.text = "CHEESE GIVEN: Too many to count!"
		else:
			cheeseScoreText.text = "CHEESE GIVEN: " + str(cheese)
		# max cheese 9999999999999999
	
	if (!mute):
		sirRgbRatSound.play()
	
	sirRgbRatAnimations.stop()
	sirRgbRatAnimations.play("animations/squish")


func _on_mute_button_pressed() -> void:
	sirRgbRatSound.stop()
	mute = !mute
