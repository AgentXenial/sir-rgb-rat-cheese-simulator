extends AudioStreamPlayer


var mute:bool=false


func _on_sir_rgb_rat_pressed() -> void:
	if !mute:
		play()


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("shutTheFuckUp"):
		stop()
		mute = !mute
