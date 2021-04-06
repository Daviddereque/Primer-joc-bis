extends KinematicBody2D

var velocitat := Vector2(100, 0)
var acceleracio : Vector2 = Vector2(2, 3)
var velocitat_max = 100


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	velocitat = Vector2.ZERO
	velocitat.x = Input.get_action_strength("dreta") - Input.get_action_strength("esquerra")
	velocitat.y = Input.get_action_strength("abaix") - Input.get_action_strength("adalt")
	move_and_slide(velocitat*velocitat_max)

	$pingu.rotation_degrees += 90 * delta





func _on_Area2D_area_shape_entered(object):
	$ColorRect.color = Color(1, 0, 0, 1)
	$Pampallugues.start()
	
