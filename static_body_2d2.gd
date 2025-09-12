extends StaticBody2D
# Of Area2D + StaticBody2D als child, afhankelijk van je setup

@onready var collider: CollisionShape2D=$colly

var _score: int = 0

func _on_body_entered(_body: Node2D) -> void:
	

	update_wall_state()
	pass # Replace with function body.
func update_wall_state() -> void:
	print("test")
	if _score == 0:
		collider.disabled = false  # muur aan
	elif _score==1:
		collider.disabled = true   # muur uit
		queue_free()
		print("yay")
	elif _score==2:
		collider.disabled = true   # muur uit
		queue_free()

# Optioneel: startwaarde instellen bij het laden
func _ready() -> void:
	update_wall_state()


func _on_chopsticks_body_entered(body: Node2D) -> void:
	_score=_score+1
	print(_score)
	update_wall_state()
	pass # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
	_score=_score-1
	pass # Replace with function body.




func _on_tempura_tower_2_body_entered(body: Node2D) -> void:
	update_wall_state()
	pass # Replace with function body.


func _on_chopsticks_2_body_entered(body: Node2D) -> void:
	_score=_score+1
	print(_score)
	pass # Replace with function body.
