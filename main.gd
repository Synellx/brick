extends Sprite2D


const PADDLE_SPEED : int = 500

func _on_ball_timer_timeout():
	$Ball.new_ball()
	






func _on_bottom_body_entered(body:Node2D):
	$BallTimer . start()
	








func _on_body_entered(body:Node):
	queue_free()
