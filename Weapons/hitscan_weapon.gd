extends Node3D

@export var fire_rate := 14.0 
@onready var cooldown_timer: Timer = $CooldownTimer

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if Input.is_action_pressed("fire"):
		if cooldown_timer.is_stopped():
			cooldown_timer.start(1.0 / fire_rate)
			print("Weapon fired")
			
