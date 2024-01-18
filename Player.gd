extends StaticBody2D
var win_height : int
var p_height : int
var ballstart : int

# Called when the node enters the scene tree for the first time.
func _ready():
	win_height = get_viewport_rect().size.x
	p_height = $ColorRect.get_size().x

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("ui_left"):
		position.x -= get_parent().PADDLE_SPEED * delta
	elif Input.is_action_pressed("ui_right"):
		position.x += get_parent().PADDLE_SPEED * delta


	position.x = clamp(position.x, p_height / 2, win_height - p_height / 2)
	ballstart = position.x