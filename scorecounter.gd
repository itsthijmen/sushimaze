extends Label
var score=0
@onready var sushi=$"sushi eat"
@onready var won=$"won2"

func _on_sushi_body_entered(_body: Node2D) -> void:
	score+=1
	text=str(score)
	sushi.play()
	if score==10:
		var timer=Timer.new()
		add_child(timer)
		timer.wait_time=4
		timer.one_shot=true
		timer.start()
		won.play()
		await timer.timeout
		get_tree().change_scene_to_file("res://game_won.tscn")
		
		won.play()
		
		
		
		

pass # Replace with function body.
