extends Area2D
func _ready():
	connect("body_entered", _on_body_entered)

@warning_ignore("unused_parameter")
func _on_body_entered(body: Node2D) -> void:
	if body.name == "Simon":
		position.x=10000
	pass # Replace with function body.
