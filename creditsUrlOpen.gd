extends RichTextLabel


var mute:bool=false


func _ready() -> void:
	text = "Press M to mute: [color=green]UNMUTED[/color]\nProgrammer: [url=https://patreon.com/infinityax]Agent Xenial[/url]\nSprite Work: [url=https://sammycadian.itch.io]SammyCadian[/url]\nSound: [url=https://www.myinstants.com/en/instant/cheese-james-may-10207]James May[/url]"


func _on_meta_clicked(meta: Variant) -> void:
	OS.shell_open(str(meta))


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("shutTheFuckUp"):
		mute = !mute
		
		if (mute):
			text = "Press M to mute: [color=red]MUTED[/color]\nProgrammer: [url=https://patreon.com/infinityax]Agent Xenial[/url]\nSprite Work: [url=https://sammycadian.itch.io]SammyCadian[/url]\nSound: [url=https://www.myinstants.com/en/instant/cheese-james-may-10207]James May[/url]"
		else:
			text = "Press M to mute: [color=green]UNMUTED[/color]\nProgrammer: [url=https://patreon.com/infinityax]Agent Xenial[/url]\nSprite Work: [url=https://sammycadian.itch.io]SammyCadian[/url]\nSound: [url=https://www.myinstants.com/en/instant/cheese-james-may-10207]James May[/url]"
