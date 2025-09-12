extends Area2D
# Of Area2D + StaticBody2D als child, afhankelijk van je setup

@onready var collider: CollisionShape2D = $CollisionShape2D

var _score: int = 0

func _on_body_entered(body: Node2D) -> void:
	

	update_wall_state()
	pass # Replace with function body.
func update_wall_state() -> void:
	if _score == 0:
		collider.disabled = false  # muur aan
	else:
		collider.disabled = true   # muur uit

# Optioneel: startwaarde instellen bij het laden
func _ready() -> void:
	update_wall_state()
