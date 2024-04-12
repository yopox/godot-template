extends Node

enum SFX { MenuMove, Select, }


func play_sfx(sfx: SFX):
	var instance = AudioStreamPlayer.new()
	
	match sfx:
		SFX.MenuMove:
			instance.stream = load("res://audio/sfx/blipSelect.wav")
	
	instance.finished.connect(dispose.bind(instance))
	add_child(instance)
	instance.play()


func dispose(instance: AudioStreamPlayer):
	instance.queue_free()
