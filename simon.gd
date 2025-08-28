extends CharacterBody2D

var speed=100
var wasabi=1
@onready var weehee=$"wasabifest sound"
@onready var a=$simonanimated2D
@onready var l=$AudioStreamPlayer2D
@warning_ignore("unused_parameter")
func _physics_process(delta: float) -> void:	
 var input=Vector2.ZERO
  
 if Input.is_action_pressed("ui_left"):
  input.x-=1
 if Input.is_action_pressed("ui_right"):
  input.x-=-1
 if Input.is_action_pressed("ui_up"):
  input.y-=1
 if Input.is_action_pressed("ui_down"):
  input.y-=-1

 input=input.normalized()

 velocity.x=input.x*speed*wasabi
 velocity.y=input.y*speed*wasabi
 
 move_and_slide()

 if input != Vector2.ZERO:
  if input.x>0:
   a.play("R walk")
  elif input.x<0:
   a.play("L walk")
  elif input.y<0:
   a.play("F walk")
  elif input.y>0:
   a.play("D walk")
 else:
  a.play("idle")

pass


func _on_timer_timeout() -> void:
 var timer=Timer.new()
 add_child(timer)
 timer.wait_time=3.2
 timer.one_shot=true
 timer.start()
 l.play()
 await timer.timeout
 get_tree().change_scene_to_file("res://game lose.tscn")
 pass # Replace with function body.


func _on_wasabi_fest_body_entered(body: Node2D) -> void:
 wasabi=2
 weehee.play()

 pass # Replace with function body.
