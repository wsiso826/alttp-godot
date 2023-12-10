extends CharacterBody2D

# Called when the node enters the scene tree for the first time.

func _physics_process(delta): 
	if Input.is_action_just_pressed("down"):
		$AnimationPlayer.play("WalkDown");
	elif Input.is_action_just_pressed("right"):
		$AnimationPlayer.play("WalkRight");
	if Input.is_action_just_pressed("ui_left"):
		$AnimationPlayer.play("WalkLeft");
	elif Input.is_action_just_pressed("ui_up"):
		$AnimationPlayer.play("WalkUp");
	
	if Input.is_action_just_released("down"):
		$AnimationPlayer.play("IdleDown");
	if Input.is_action_just_released("left"):
		$AnimationPlayer.play("IdleLeft");
	if Input.is_action_just_released("right"):
		$AnimationPlayer.play("IdleRight");
	if Input.is_action_just_released("up"):
		$AnimationPlayer.play("IdleUp");

