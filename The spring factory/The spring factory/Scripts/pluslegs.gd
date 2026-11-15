extends Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_legs_body_entered(body: Node2D) -> void:
	text = '+ 1 set of legs'
	await (3)
	queue_free()
