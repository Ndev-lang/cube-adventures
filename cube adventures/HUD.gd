extends CanvasLayer

var coins = 0

func _physics_process(delta: float) -> void:
	$fps.text = "FPS: " + str(Performance.get_monitor(Performance.TIME_FPS))


func _ready() -> void:
	$"coins".text = String(coins)

func _on_coin_collected() -> void:
	coins += 1
	_ready()
