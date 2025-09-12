extends Area2D
 
@onready var timer: Timer = $Timer
@onready var timer2: Timer = $Timer2
var e = 0
func _ready():
	# Stel timer in
	timer.wait_time = 2.0
	timer.autostart = true
	timer.timeout.connect(_on_timer_timeout)
	connect("body_entered", _on_body_entered)
	e == 0
	print(e)
func _on_timer_timeout():
	var target = Vector2(
		randf_range(1160, 1160),
		randf_range(1460, 1460)
	)

	# Maak een nieuwe tween aan (Godot 4 manier)
	var tween = create_tween()
	tween.set_trans(Tween.TRANS_SINE) # vloeiende overgang
	tween.set_ease(Tween.EASE_IN_OUT) # langzaam starten/stoppen
	tween.tween_property(self, "position", target, 3.0)

	




func _on_body_entered(body: Node2D) -> void:
	if body.name == "Simon":
		if e in [0, 1, 2]:
			get_tree().change_scene_to_file("res://lost.tscn")
		elif e == 3:
			timer2.start()
		elif e in [4, 5, 6]:
			get_tree().change_scene_to_file("res://lost.tscn")
		elif e == 7:
			queue_free()
			
		
	pass # Replace with function body.


func _on_soy_body_entered(body: Node2D) -> void:
	if body.name == "Simon":
		e = e + 1
		print(e)
	pass # Replace with function body.
