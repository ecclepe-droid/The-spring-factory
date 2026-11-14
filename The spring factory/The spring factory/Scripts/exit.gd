extends Area2D
var level = 1
@export var level_1: Node2D

const LEVEL_ONE_PACKED = preload("res://Scenes/level_1.tscn")
const LEVEL_2 = preload("uid://bemi2m21kqu2r")
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player' or body.name == 'Player-armless':
		if level == 1:
			get_tree().change_scene_to_packed(LEVEL_2)
			self.position.x = 378
			self.position.y = -32.5
			level += 1
			
