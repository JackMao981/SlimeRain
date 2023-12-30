extends Node2D
var slime = preload("res://scenes/slime/slime.tscn")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if (Input.is_action_just_pressed("primary")):
		var instance_slime = slime.instantiate()
		instance_slime.position = get_global_mouse_position()
		add_child(instance_slime)
	
