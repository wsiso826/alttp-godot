extends CharacterBody2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("WalkDown");
	
func physics_process(delta):
	if Input.is_action_just_pressed("down"):
		$AnimationPlayer.play("WalkDown");
	if Input.is_action_just_pressed("right"):
		$AnimationPlayer.play("WalkRight");
	if Input.is_action_just_pressed("ui_left"):
		$AnimationPlayer.play("WalkLeft");
	elif Input.is_action_just_pressed("ui_up"):
		$AnimationPlayer.play("WalkUp");

