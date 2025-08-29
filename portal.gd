extends Area2D
var score=0
@onready var sushi=$"sushi eat"
@onready var won=$"won2"
func _on_sushi_body_entered(_body: Node2D) -> void:
	score+=100
	print(score)
	if score==1000:
		
		position.x=607.5
		
		
		
		
		

pass # Replace with function body.
const FILE_BEGIN = "res://level_"
func _on_body_entered(body: Node2D) -> void:
	var csf = get_tree().current_scene.scene_file_path
	var nln = csf.to_int() + 1
	var nlp = FILE_BEGIN + str(nln) + ".tscn"
	get_tree().change_scene_to_file(nlp)
	pass # Replace with function body.
