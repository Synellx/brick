extends Area2D
var p_height : int

func _ready():
	p_height = $ColorRect.get_size().x


func _on_body_entered(body):
	queue_free()
