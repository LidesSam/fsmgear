extends CharacterBody2D

@onready var fsm = $fsm

func _ready() -> void:
	fsm.autoload(self)
	fsm.start_fsm()
	
