extends CharacterBody2D
var scene = load("res://lost.tscn")
var instance = scene.instantiate()
var speed=100
var wasabi=1
var score=0
@onready var song_1=$wasabiboogie
@onready var song_3=$"3rd song"
@onready var song_2=$"2nd song" 
@onready var weehee=$"wasabifest sound"
@onready var a=$simonanimated2D
@onready var l=$AudioStreamPlayer2D
@onready var soy=$soysound
@onready var won=$"score/won2"
@onready var timer=$"timer(screen)/Timer"
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
 get_tree().change_scene_to_file("res://lost.tscn")
 l.play()
 
 pass # Replace with function body.


@warning_ignore("unused_parameter")
func _on_wasabi_fest_body_entered(body: Node2D) -> void:
 weehee.play()
 wasabi=wasabi+1

 pass # Replace with function body.



func _on_sushi_3_body_entered(body: Node2D) -> void:
 score+=100
 if score==1000:
  won.play()
  position.x=1245
  position.y=175
  timer.start()
 pass # Replace with function body.


func _on_timer_2_timeout() -> void:
 position.x=2210
 position.y=195
 won.play()
 timer.start()
 pass # Replace with function body.



 # Replace with function body.


func _on_area_2d_body_entered(body: Node2D) -> void:
 timer.start(600)
 wasabi=1
 pass # Replace with function body.


func _on_soy_body_entered(body: Node2D) -> void:
 if body.name == "Simon":
  score+=200
 pass # Replace with function body.


func _on_chopsticks_body_entered(body: Node2D) -> void:
 if body.name == "Simon":
  score+=500
 pass # Replace with function body.


func _on_wasabiboogie_finished() -> void:
 song_2.play()
 pass # Replace with function body.


func _on_nd_song_finished() -> void:
 song_3.play()
 pass # Replace with function body.


func _on_rd_song_finished() -> void:
 song_1.play()
 pass # Replace with function body.


func _on_area_2d_2_body_entered(body: Node2D) -> void:
 position.y=1940
 position.x=1540
 pass # Replace with function body.
