extends Area2D
var level = 1
@export var level_1: Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player' or body.name == 'Player-armless':
		if level == 1:
			level_1.hide()
