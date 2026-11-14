extends Area2D
var canbounce = true
@onready var timer: Timer = $Timer
@onready var spring: AnimatedSprite2D = $AnimatedSprite2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass




func _on_body_entered(body: Node2D) -> void:
	if body.name == 'Player' or body.name == 'Player-armless' and canbounce == true:
		canbounce = false
		timer.start()
		print(self.position.y)
		print(body.position.y)
		body.gravity = body.gravity - 3
		if body.position.y >= self.position.y:
			body.speed = body.speed * -15
		spring.play('spring')


func _on_timer_timeout() -> void:
	if canbounce == false:
		canbounce = true
