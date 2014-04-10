# player
extends KinematicBody2D

var gravity  = 300
var velocity = Vector2.ZERO
var speed    = 150
var jumpf    = 200

func _ready() -> void:
	
	pass

func _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
	elif Input.is_action_pressed("ui_up"):
		velocity.y = -jumpf
	else:
		velocity.x = 0
	
	move_and_slide(velocity,Vector2.UP)
	pass