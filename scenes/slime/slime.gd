extends CharacterBody2D
@onready var animation_player: AnimationPlayer = $AnimationPlayer
const SPEED = 300.0
var gravity = 980


# Called when the node enters the scene tree for the first time.``
func _ready():
	animation_player.active = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta):




	var direction = Input.get_vector("left", "right", "up", "down")
	
	velocity = direction * SPEED

	if not is_on_floor():
		velocity.y += gravity * delta

	if velocity.x == 0:
		pass
	elif velocity.x < 0:
		$SpriteSlime.set_flip_h(true)
	else:
		$SpriteSlime.set_flip_h(false)
			
	move_and_slide()
func _process(_delta):
	if (!Input.is_anything_pressed()):
		animation_player.play("idle_r")
	else:
		animation_player.stop()
	#else:
		#animation_player.play("idle_l")
			
	
	
