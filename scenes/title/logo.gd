extends Label

var initial_position: Vector2
var t: float = 0

func _ready():
	initial_position = self.get_position()

func _process(delta):
	t += delta
	position = initial_position + Vector2(0, sin(t / 1.25) * 2)
