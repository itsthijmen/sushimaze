extends Label
@onready var timer=$Timer
@warning_ignore("unused_parameter")
func _process(delta: float) -> void:
	text=str(timer.time_left)
	pass
