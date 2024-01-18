extends StaticBody2D

var velocity = Vector2(250, 250)
var p_height : int

func _ready():
	p_height = $ColorRect.get_size().x


func _physics_process(delta):
	var collision_info
	if collision_info:
		velocity = velocity.bounce(collision_info.get_normal())