extends Label

@export var choice: Choice

func _ready():
	choice.selection_updated.connect(update)
	

func update():
	Sfx.play_sfx(Sfx.SFX.MenuMove)
	var selected: Node = choice.get_selected_element()
	global_position.y = (selected as Control).global_position.y
