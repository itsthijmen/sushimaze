extends Node2D
@onready var sushi=$"sushi eat"
@onready var wasabi=$"wasabifest sound"

func _on_sushi_3_body_entered(body: Node2D) -> void:
	sushi.play()
	pass # Replace with function body.

func _on_wasabi_fest_body_entered(body: Node2D) -> void:
	wasabi.play()
	pass # Replace with function body.
