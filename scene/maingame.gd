extends Node3D
var health = 30

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func health_loss():
	health -= 1
	print(health)
	if health <= 0:
		teleport_player()


func teleport_player():
	get_tree().change_scene_to_file("res://scene/main_UI.tscn")
