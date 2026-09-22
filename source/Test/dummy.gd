extends CharacterBody2D

@onready var fsm = $Fsm

func _ready() -> void:
	fsm.autoload(self)
	
