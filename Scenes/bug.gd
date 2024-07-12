extends Node2D



func  _process(delta):
	play_anim()

func play_anim():
	$AnimatedSprite2D.play("default")

