extends Label
var scene = load("res://won.tscn")
var instance = scene.instantiate()

var score=1000
@onready var sushi=$"sushi eat"
@onready var won=$"won2"

func _on_sushi_body_entered(_body: Node2D) -> void:
	score+=100
	text=str(score)
	sushi.play()
	if score==1000:
		add_child(instance)
		won.play()
		
		
		
		

pass # Replace with function body.
