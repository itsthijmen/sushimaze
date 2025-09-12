extends Label


var score=0

@onready var won=$"won2"

func _on_sushi_body_entered(_body: Node2D) -> void:
	score+=100
	text=str(score)
	
		
		
		
		

pass # Replace with function body.


func _on_soy_body_entered(body: Node2D) -> void:
	if body.name == "Simon":
		score+=200
		text=str(score)
	pass # Replace with function body.


func _on_chopsticks_body_entered(body: Node2D) -> void:
	if body.name == "Simon":
		score+=500
		text=str(score)
	pass # Replace with function body.
